#!/bin/sh

# ---------------------- NODE SETUP ----------------------
function install_node_modules() {
    echo "\n---------------------------------"
    echo "\nInstalling Node Modules"
    echo "---------------------------------"

    npm i

    echo "\n---------------------------------"
    echo "\nNode Module Installation Complete"
    echo "---------------------------------"
}

# ----- main -----
install_node_modules
./scripts/build.sh -w
./scripts/link.sh
./scripts/build.sh -r
