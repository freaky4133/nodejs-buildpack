#!/bin/bash

set -e

function main() {
  local version="stable"
  local url="https://dl.google.com/linux/direct/google-chrome-${version}_current_amd64.deb"
  
  echo "-----> Downloading Chromium"
  curl -L "${url}" \
    --silent \
    --show-error \
    --fail \
    --retry 15 \
    --retry-delay 2 \
    --output "/tmp/chromium.deb"

  echo "-----> Chromium downloaded successfully"
}

main "${@:-}"
