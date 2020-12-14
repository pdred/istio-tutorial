#!/bin/bash

kubectl create -f ./../istiofiles/service-entry-egress-worldclockapi.yml -n $USERNAME-tutorial
