#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

curl \
  --header "Authorization: Token 72b45c5e-e0fe-4be0-8969-69a4ba4ec777" \
  --header "Content-Type: application/json" \
  --data "{
    \"value\":\"42 %\",
    \"sha\":\"${TRAVIS_COMMIT}\"
  }" \
  https://seriesci.com/api/sambacha/solidity-ci-seriesci/:series/one

exit 0
