#!/usr/bin/env bash
set -euo pipefail
trap 'echo "Error on line $LINENO"' ERR

# Configurable paths/files via env vars with defaults
PHP_INI="${PHP_INI:-/home/container/core/php/php.ini}"
PHP_FPM_CONF="${PHP_FPM_CONF:-/home/container/core/php/php-fpm.conf}"
NGINX_CONF="${NGINX_CONF:-/home/container/core/nginx/nginx.conf}"
NGINX_PREFIX="${NGINX_PREFIX:-/home/container}"

# Locate the available php-fpm binary
PHP_FPM_BIN=""
for candidate in php-fpm php-fpm8.5 php-fpm8.4 php-fpm8.3 php-fpm8.2 php-fpm8.1 php8.5-fpm php8.4-fpm php8.3-fpm php8.2-fpm php8.1-fpm; do
  if command -v "$candidate" >/dev/null 2>&1; then
    PHP_FPM_BIN="$candidate"
    break
  fi
done

if [[ -z "$PHP_FPM_BIN" ]]; then
  echo "ERROR: Could not find a usable php-fpm binary."
  exit 1
fi

# Start PHP-FPM
echo "Starting PHP-FPM"
echo "Launching ${PHP_FPM_BIN}"
"$PHP_FPM_BIN" \
  -c "$PHP_INI" \
  --fpm-config "$PHP_FPM_CONF" \
  --daemonize > /dev/null 2>&1 || {
    echo "ERROR: Failed to launch ${PHP_FPM_BIN}."
    exit 1
  }

# Success message
echo "webserver started"

# Brief pause
sleep 1

# Start NGINX
nginx -c "$NGINX_CONF" -p "$NGINX_PREFIX" -e /dev/stderr