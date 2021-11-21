#!/bin/bash
set -eu

# on ubuntu
OS="$(uname)"
if [[ "${OS}" == "Linux" ]]; then
    apt update -y
    apt update install -y build build-essential git curl
fi

# ensure essentials
which git
which curl
