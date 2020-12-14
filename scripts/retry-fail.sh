#!/bin/bash
./scripts/clean.sh
oc exec -it $(oc get pods -n $USERNAME-tutorial|grep recommendation-v2|awk '{ print $1 }'|head -1) -n $USERNAME-tutorial -c recommendation curl localhost:8080/misbehave
