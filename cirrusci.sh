#!/bin/sh

set -ex

export CLONE_DIR=`pwd`
cd core/lib/src && mv tmdb_config.dart.sample tmdb_config.dart && cd ../../..

cd ~
wget https://github.com/flutter/flutter/archive/v1.5.4-hotfix.2.tar.gz
tar -xzf v1.5.4-hotfix.2.tar.gz
cd flutter-1.5.4-hotfix.2
export PATH="$PATH:`pwd`/bin"

cd CLONE_DIR
flutter build ios --no-codesign --release -v
