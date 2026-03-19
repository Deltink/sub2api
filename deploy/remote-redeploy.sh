#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPT_DIR}"

docker compose \
  -f docker-compose.local.yml \
  -f docker-compose.source.local.yml \
  -f docker-compose.cloudflare.yml \
  up -d --build

docker compose \
  -f docker-compose.local.yml \
  -f docker-compose.source.local.yml \
  -f docker-compose.cloudflare.yml \
  ps
