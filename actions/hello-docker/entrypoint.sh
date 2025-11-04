#!/usr/bin/env bash
set -euo pipefail

WHO="${1:-World}"
MSG="Hello ${WHO}"

echo "${MSG}"
# Emit a debug hint too (visible when debug is enabled)
echo "::debug::Computed message: ${MSG}"

# Produce an output using the supported file-based protocol
# (set-output is deprecated)
# shellcheck disable=SC2129
echo "shout=${MSG^^}" >> "${GITHUB_OUTPUT}"
