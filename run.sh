#!/usr/bin/env bash

# Automatically exit with an error code if any command fails
set -e

# Install package.json dependencies
yarn

# Run TypeDoc
yarn typedoc

# You can add additional commands here to make assertions on the output,
# here's one example checking the parsed name from package.json

test $(jq '.name' docs/docs.json) = "typedoc-reprosx"
