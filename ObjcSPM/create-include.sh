#!/bin/sh

set -e

readonly DIR=`dirname $0`
readonly PROJECT_ROOT=${DIR}
readonly MODULES_DIR=SwiftModules

readonly MODULE_NAME=$1
readonly MODULE_SOURCES_PATH=${MODULES_DIR}/Sources/${MODULE_NAME}

cd ${MODULE_SOURCES_PATH}/include
rm -f ../include/*

find .. -name '*.h' | while read header; do
    ln -s "${header}"
done
