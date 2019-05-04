#!/bin/sh

# ---------------------- NODE INSTALL PACKAGE ----------------------
function install_node_package() {
    npm i $*
}

function less_argument_errro_message() {
    echo "Usage: npm run install <type> <package>[ <package>]"
    echo ""
    echo "where <type> is one of:"
    echo "\t--save"
    echo "\t--save-dev"
    echo ""
    echo "and <package> is any package name."
    echo ""
    echo "Example:"
    echo "\tnpm run install --save react"
}

# ----- main -----
if [ $# -lt 2 ]; then
    less_argument_errro_message
    exit 0
fi
install_node_package $*
./scripts/link.sh
