#!/usr/bin/env bash

set -euo pipefail
PROJECT_ROOT="$(git rev-parse --show-toplevel)"

pushd "$PROJECT_ROOT" >/dev/null
  git ls-files --full-name '*.sh' | \
    xargs -IX echo "$PROJECT_ROOT/X"
popd >/dev/null
