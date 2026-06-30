#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

npx terser image-comparator.js \
  --compress \
  --mangle \
  --toplevel \
  --output image-comparator.min.js

echo "==> image-comparator.min.js ($(stat -f%z image-comparator.min.js) bytes)"
