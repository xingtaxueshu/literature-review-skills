#!/usr/bin/env bash
# Verify skills/*/references/ are identical copies of the root references/.
set -u
root="$(cd "$(dirname "$0")/.." && pwd)"
status=0
for src in "$root"/references/*.md; do
  name="$(basename "$src")"
  for dir in "$root"/skills/*/; do
    copy="${dir}references/$name"
    if [ ! -f "$copy" ]; then
      echo "MISSING: ${copy#$root/}"; status=1
    elif ! diff -q "$src" "$copy" >/dev/null; then
      echo "DIFFERS: ${copy#$root/} (root: references/$name)"; status=1
    fi
  done
done
[ $status -eq 0 ] && echo "OK: all skill references match root references/"
exit $status
