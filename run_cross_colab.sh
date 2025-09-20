#!/bin/bash
#========================================================================================================================================
# CyborgAI CC BY-NC-ND 4.0 Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International  https://github.com/cyborg-ai-git 
#========================================================================================================================================
PACKAGE_NAME="$(basename "$(pwd)")"
DIRECTORY_BASE=$(dirname "$(realpath "$0")")
clear
echo "Usage with message: $0 'commit_message' release"

echo "🟢 RUN git $ $DIRECTORY_BASE"
current_time=$(date +"%Y.%-m.%-d%H%M")

CURRENT_DIRECTORY=$(pwd)
#cargo tree --invert --package=openssl
cross build --release --target x86_64-unknown-linux-musl
cd "$CURRENT_DIRECTORY" || exit