#!/bin/sh

# ---------------------- DEV SERVER ----------------------
function run_dev_server() {
    webpack-dev-server --progress --color --inline --hot
}

# ----- main -----
run_dev_server
