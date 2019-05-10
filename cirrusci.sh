#!/bin/sh

set -ex

export CLONE_DIR=`pwd`
cd core/lib/src && mv tmdb_config.dart.sample tmdb_config.dart && cd ../../..

cd ~

git clone -b stable https://github.com/flutter/flutter.git
cd flutter
export PATH="$PATH:`pwd`/bin"

cd $CLONE_DIR
flutter --version
flutter packages pub get
flutter build ios --no-codesign --release -v
