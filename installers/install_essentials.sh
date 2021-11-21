#!/bin/bash
set -eu

# on ubuntu
OS="$(uname)"
if [[ "${OS}" == "Linux" ]]; then
    sudo apt update -y && sudo apt install -y build build-essential git curl
fi

# ensure essentials
which git
which curl
