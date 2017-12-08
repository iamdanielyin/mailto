#!/bin/bash

build_dir="./build"

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o $build_dir/mailto_linux_amd64
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o $build_dir/mailto_darwin_amd64
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o $build_dir/mailto_windows_amd64.exe