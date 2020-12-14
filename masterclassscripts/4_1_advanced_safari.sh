#!/bin/sh

kubectl apply -f ./../istiofiles/virtual-service-safari-recommendation-v2.yml -n $USERNAME-tutorial

./../scripts/run.sh "-A Safari http://$(kubectl get route istio-ingressgateway -n istio-system --output 'jsonpath={.status.ingress[].host}')/customer"
