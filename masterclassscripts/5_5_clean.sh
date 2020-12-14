#!/bin/bash

kubectl delete -f ./../istiofiles/virtual-service-recommendation-timeout.yml -n $USERNAME-tutorial

kubectl patch deployment recommendation-v2 -p '{"spec":{"template":{"spec":{"containers":[{"name":"recommendation", "image":"quay.io/rhdevelopers/istio-$USERNAME-tutorial-recommendation:v2"}]}}}}' -n $USERNAME-tutorial
