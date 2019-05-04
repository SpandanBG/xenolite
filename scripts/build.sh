#!/bin/sh

# ---------------------- WASM BUILD ----------------------
function build_wasm() {
    echo "\n---------------------------------"
    echo "\nBuilding Wasm Files"
    echo "---------------------------------"

    wasm-pack build

    echo "\n---------------------------------"
    echo "\nWASM Build Complete"
    echo "---------------------------------"
}

# ---------------------- REACT BUILD ----------------------
function build_react() {
    echo "\n---------------------------------"
    echo "\n Building React Bundle"
    echo "---------------------------------"

    npx webpack --mode=development

    echo "\n---------------------------------"
    echo "\n Bundling Complete"
    echo "---------------------------------"
}

# ----- main -----
if [ $# -eq 0 ]; then
    build_wasm
    build_react
else
    while [ "$1" != "" ]; do
        case $1 in
            -w | --wasm )   build_wasm
                            ;;
            -r | --react )  build_react
                            ;;
        esac
        shift
    done
fi

