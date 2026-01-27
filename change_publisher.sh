#!/bin/bash
set -e

old_package_name='Agora-Flutter-SDK'
new_package_name='Shengwang-Flutter-SDK'
old_name="agora_rtc_engine"
new_name="shengwang_rtc_engine"
old_description="Flutter plugin of Agora RTC SDK, allow you to simply integrate Agora"
new_description="Flutter plugin of Shengwang RTC SDK, allow you to simply integrate Shengwang"
old_link="www.agora.io"
new_link="www.shengwang.cn"

PROJECT_ROOT=$(pwd)

# 修改 pubspec.yaml
if [ -f "pubspec.yaml" ]; then
    sed "s/name: ${old_name}/name: ${new_name}/g" pubspec.yaml >tmp && mv tmp pubspec.yaml
    sed "s/${old_package_name}/${new_package_name}/g" pubspec.yaml >tmp && mv tmp pubspec.yaml
    sed "s/${old_description}/${new_description}/g" pubspec.yaml >tmp && mv tmp pubspec.yaml
    sed "s/${old_link}/${new_link}/g" pubspec.yaml >tmp && mv tmp pubspec.yaml
fi

# 修改 example/pubspec.yaml
if [ -f "example/pubspec.yaml" ]; then
    sed "s/${old_name}:/${new_name}:/g" example/pubspec.yaml >tmp && mv tmp example/pubspec.yaml
fi

# 替换所有 Dart 文件中的 package 引用
find . -type f \( -name "*.dart" -o -name "*.md" \) ! -path "*/.dart_tool/*" ! -path "*/build/*" | while read -r file; do
    if grep -q "package:${old_name}/" "$file" 2>/dev/null; then
        sed "s/package:${old_name}\//package:${new_name}\//g" "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
        echo "Replaced in: $file"
    fi
done

echo "All replacements completed successfully!"
