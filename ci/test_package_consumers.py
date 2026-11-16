import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest


class PackageConsumerTest(unittest.TestCase):
    def test_consumers_resolve_the_local_shengwang_package(self):
        for platform in ("ios", "macos"):
            with self.subTest(platform=platform), tempfile.TemporaryDirectory(prefix="consumer ") as directory:
                root = Path(directory)
                (root / "ci").mkdir()
                source = Path(__file__).with_name(f"run_flutter_{platform}_published_package_smoke_test.sh")
                script = root / "ci" / source.name
                shutil.copy(source, script)
                (root / "pubspec.yaml").write_text("name: shengwang_rtc_engine\nversion: 6.6.4\n")
                subprocess.run(["git", "init", "-q", str(root)], check=True)
                subprocess.run(["git", "-C", str(root), "add", "."], check=True)
                (root / "bin").mkdir()
                flutter = root / "bin/flutter"
                flutter.write_text("""#!/usr/bin/env python3
import json
import os
from pathlib import Path
import re
import sys
args = sys.argv[1:]
with open(os.environ['COMMAND_LOG'], 'a') as output:
    output.write(json.dumps(args) + '\\n')
if args[0] == 'create':
    app = Path(args[-1])
    app.mkdir()
    (app / 'pubspec.yaml').write_text('name: consumer\\ndependencies:\\n  cupertino_icons: ^1.0.8\\n')
elif args == ['pub', 'get']:
    manifest = Path('pubspec.yaml').read_text()
    match = re.search(r'  shengwang_rtc_engine:\\n    path: (.+)', manifest)
    assert match, manifest
    package_manifest = (Path(match[1]) / 'pubspec.yaml').read_text()
    assert 'name: shengwang_rtc_engine\\n' in package_manifest, package_manifest
else:
    assert args[0] == 'build', args
""")
                flutter.chmod(0o755)
                log = root / "commands"
                env = dict(os.environ, PATH=str(root / "bin") + os.pathsep + os.environ["PATH"],
                           COMMAND_LOG=str(log))
                result = subprocess.run(["bash", str(script)], cwd=root, env=env,
                                        capture_output=True, text=True, timeout=20)
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                commands = [json.loads(line) for line in log.read_text().splitlines()]
                self.assertEqual(sum(command == ["pub", "get"] for command in commands), 1)
                self.assertEqual([command[1] for command in commands if command[0] == "build"], [platform])


if __name__ == "__main__":
    unittest.main()
