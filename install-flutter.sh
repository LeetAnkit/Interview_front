#!/bin/bash
set -e

if [ ! -d "flutter" ]; then
  echo "Downloading Flutter SDK..."
  git clone https://github.com/flutter/flutter.git -b stable
else
  echo "Flutter SDK already exists. Skipping download."
fi

export PATH="$PATH:$PWD/flutter/bin"

echo "Flutter version:"
flutter --version

echo "Running flutter doctor..."
flutter doctor

echo "Enabling web support..."
flutter config --enable-web
flutter precache
