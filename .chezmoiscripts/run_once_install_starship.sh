#!/usr/bin/env bash

set -o pipefail

# Safe umask.
umask 077

# Where to install the starship binary.
export BIN_DIR="${BIN_DIR:-$HOME/.local/bin}"

if ! type -P starship >/dev/null 2>&1; then
  mkdir -p "${BIN_DIR}" && sh <(curl -LsSf https://starship.rs/install.sh) --yes
fi
