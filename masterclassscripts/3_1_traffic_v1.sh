#!/bin/sh

kubectl create -f ./../istiofiles/destination-rule-recommendation-v1-v2.yml -n $USERNAME-tutorial
kubectl create -f ./../istiofiles/virtual-service-recommendation-v1.yml -n $USERNAME-tutorial

./../scripts/run.sh http://$(kubectl get route istio-ingressgateway -n istio-system --output 'jsonpath={.status.ingress[].host}')/customer
