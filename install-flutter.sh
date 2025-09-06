#!/bin/bash
set -e

echo "Downloading Flutter SDK..."
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:$PWD/flutter/bin"

echo "Flutter version:"
flutter --version
