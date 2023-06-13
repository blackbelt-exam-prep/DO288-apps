#!/bin/bash

source /usr/local/etc/ocp4.config

oc new-app --name simple --build-env \
    npm_config_registry=http://nexus-common.apps.ap410.prod.ole.redhat.com:8081/repository/nodejs \
    https://github.com/blackbelt-exam-prep/DO288-apps \
    --context-dir build-app

