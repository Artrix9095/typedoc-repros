#!/usr/bin/env bash

# Automatically exit with an error code if any command fails
set -e

# Install package.json dependencies
pnpm install

# build both packages
cd packages/pkg1
pnpm build
cd ../../

cd packages/pkg2
pnpm build
cd ../../

# Move to docs dir
cd apps/docs

pnpm install

# Run TypeDoc
pnpm build

echo
echo ========================================================
echo

# Print commands before running them, to make CI output easier to understand
set -v



