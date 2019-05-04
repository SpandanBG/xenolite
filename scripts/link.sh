#!/bin/sh

# ---------------------- WASM BUILD LINK ----------------------
function link_wasm_to_node_module() {
    echo "\n---------------------------------"
    echo "\nLinking generated WASM to Node Modules"
    echo "---------------------------------"

    cd pkg/
    npm link
    cd ../src/
    npm link xenolite

    echo "\n---------------------------------"
    echo "\nNode Module Link Complete"
    echo "---------------------------------"
}

# ----- main -----
link_wasm_to_node_module