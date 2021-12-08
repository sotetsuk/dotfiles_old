#!/bin/bash
set -eu

# on ubuntu
OS="$(uname)"
if [[ "${OS}" == "Linux" ]]; then
    sudo apt update -y && sudo apt install -y build-essential git curl python3-venv
fi
