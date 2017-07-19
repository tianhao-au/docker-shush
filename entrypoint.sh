#! /usr/bin/env sh

set -eu -o pipefail

# run the command decrypting KMS variables
shush --region ap-southeast-2 exec -- $@
