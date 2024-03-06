#!/bin/bash

# Install Go
sudo apt-get update
sudo apt-get install -y golang

# Install necessary Go packages
go get -u github.com/fatih/color
go get -u github.com/yeka/zip
go get -u github.com/josephspurrier/goversioninfo

# Install required tools
sudo apt-get install -y osslsigncode
sudo apt-get install -y mingw-w64

# Create directory for cloning repository
mkdir -p ~/bypass
cd ~/bypass || exit

# Clone ScareCrow repository
git clone https://github.com/optiv/ScareCrow

# Build ScareCrow
cd ScareCrow || exit
go build ScareCrow.go

# Run ScareCrow
./ScareCrow
