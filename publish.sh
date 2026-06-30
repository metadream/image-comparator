#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

if [ $# -ge 1 ]; then
  npm version "$1" --no-git-tag-version
fi

./minify.sh

VERSION=$(node -p "require('./package.json').version")
echo "==> Publishing @metadream/image-comparator@$VERSION ..."
npm publish
echo "==> Done"
