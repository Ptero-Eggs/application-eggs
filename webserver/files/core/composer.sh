#!/usr/bin/env bash
set -euo pipefail
trap 'echo "[composer] Error on line $LINENO"' ERR

# Configuration via environment variables
COMPOSER_STATUS="${COMPOSER_STATUS:-false}"
COMPOSER_MODULES="${COMPOSER_MODULES:-}"
CACHE_DIR="${COMPOSER_CACHE_DIR:-/home/container/.cache/composer}"
WWW_DIR="${COMPOSER_WWW_DIR:-/home/container/www}"
COMPOSER_JSON="$WWW_DIR/composer.json"

# Function to check if Composer should be enabled
enabled() { [[ "$1" =~ ^(true|1)$ ]]; }

# Skip if Composer is disabled
if ! enabled "$COMPOSER_STATUS"; then
  exit 0
fi

# Ensure the Composer cache directory exists
mkdir -p "$CACHE_DIR"
export COMPOSER_CACHE_DIR="$CACHE_DIR"

echo "[Composer] Installing Composer packages"

# Prefer composer.json if it exists
if [[ -f "$COMPOSER_JSON" ]]; then
  echo "[Composer] composer.json found. Running install..."
  composer install \
    --working-dir="$WWW_DIR" \
    --no-interaction
  echo "[Composer] Composer install complete"

# Fallback to COMPOSER_MODULES if composer.json is missing
elif [[ -n "$COMPOSER_MODULES" ]]; then
  echo "[Composer] composer.json not found. Installing from COMPOSER_MODULES: $COMPOSER_MODULES"
  composer require $COMPOSER_MODULES \
    --working-dir="$WWW_DIR" \
    --no-interaction
  echo "[Composer] Composer module installation complete"

# No installation source found
else
  echo "[Composer] No composer.json and no modules specified. Skipping."
fi