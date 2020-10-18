#!/bin/bash

set -e

readonly DIR=`dirname $0`
readonly CWD=`pwd`
readonly CONFIGURATION=$1
readonly configuration=`echo "$1" | tr '[:upper:]' '[:lower:]'`

function generate {
    local -r module_name=$1

    cd "${DIR}"/../${module_name}
    swift package generate-xcodeproj --xcconfig-overrides ../"${DIR}"/${configuration}.xcconfig

    # This is a little trick to make MarseilleTaxi build possible on the CI.
    # SPM supports only two configurations (Debug, Release).
    # MarseilleTaxi uses custom configuration name (AppStore, AdHoc).
    # xcodebuild can compile modules with same configuration names strictly.
    # So generated Release configuration will be renamed to the actual at the build moment on CI.
    if ! [[ "${CONFIGURATION}" == Debug ]] ; then
        sed -i '.bak' "s/\"Release\"/\"${CONFIGURATION}\"/g" ${module_name}.xcodeproj/project.pbxproj
        rm ${module_name}.xcodeproj/project.pbxproj.bak
    fi
    cd "${CWD}"
}

generate UICardViewController
generate UIComponents
generate UIHelpers
