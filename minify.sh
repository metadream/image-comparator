#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

# Preprocess: minify CSS inside inlineStyles string literal
node -e "
const fs = require('fs');
let src = fs.readFileSync('image-comparator.js', 'utf8');
src = src.replace(/^(    #inlineStyles = )\x60([\s\S]*?)\x60/m, (match, prefix, css) => {
  const min = css.replace(/\n\s*/g, ' ').replace(/\s{2,}/g, ' ').trim();
  return prefix + '\x60' + min + '\x60';
});
fs.writeFileSync('image-comparator.tmp.js', src);
"

npx terser image-comparator.tmp.js --compress --mangle --output image-comparator.min.js

rm image-comparator.tmp.js

echo "==> image-comparator.min.js ($(stat -f%z image-comparator.min.js) bytes)"

