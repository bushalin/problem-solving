#!/bin/bash

## Project global variables
NPROC=$(nproc)
ARCH=`uname -m`
APP_NAME="SAMPLE_APP"

# if [ -d "../lib" ] && [ -d "../lib/sdk-lib" ] && [ -d "../lib/sdk-lib/block-libraries" ]; then
#     echo "Block libraries are in place"
# else
#     echo "Block libraries not found. Copying..."
#     mkdir -p "../lib" && mkdir -p "../lib/sdk-lib"
#     cp -r "libs/$ARCH/lib/sdk_lib/block-libraries" "../lib/sdk-lib"
# fi

## Set up directories
PROJECT_DIR=$(pwd)
BUILD_DIR=${PROJECT_DIR}/build

rm -rf ${BUILD_DIR}/*
mkdir -p ${BUILD_DIR} && cd ${BUILD_DIR}
cmake \
    -S $PROJECT_DIR \
    -DBUILD_TARGET=$ARCH \
    -DAPP_NAME=$APP_NAME \

make -j $NPROC
