#!/usr/bin/env bash
set -euxo pipefail

export CFLAGS="${CFLAGS:-} -Drandom=rand -Dsrandom=srand"

./configure \
  --prefix="$PREFIX" \
  --disable-silent-rules \
  --without-readline

make -j"${CPU_COUNT:-1}"
make install