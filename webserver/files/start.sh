#!/usr/bin/env bash
# Ensure Unix line endings
sed -i 's/\r$//' "$0"
find core -type f -name "*.sh" -exec sed -i 's/\r$//' {} + 2>/dev/null || true

set -euo pipefail
trap 'echo "Error on line $LINENO"' ERR

# run composer
COMPOSER_STATUS="${COMPOSER_STATUS:-false}"
if [[ "$COMPOSER_STATUS" == "true" || "$COMPOSER_STATUS" == "1" ]]; then
  echo "Running composer script"
  bash core/composer.sh
fi

# run nginx
NGINX_STATUS="${NGINX_STATUS:-true}"
if [[ "$NGINX_STATUS" == "true" || "$NGINX_STATUS" == "1" ]]; then
  echo "Starting nginx script"
  bash core/nginx.sh
  exit 0
fi