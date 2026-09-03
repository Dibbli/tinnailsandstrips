#!/usr/bin/env bash
# Package the mod into dist/tinnailsandstrips_<version>.zip
# Content-only mod (JSON patches, no DLL), so there is nothing to compile.
# Usage: ./build.sh
set -euo pipefail
cd "$(dirname "$0")"

VERSION=$(grep -oP '"version"\s*:\s*"\K[^"]+' modinfo.json)
OUT="dist/tinnailsandstrips_${VERSION}.zip"

rm -f "$OUT"
mkdir -p dist
zip -qr "$OUT" modinfo.json assets

echo "built $OUT"
