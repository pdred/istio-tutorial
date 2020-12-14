#!/bin/sh

kubectl logs `kubectl get pods -n $USERNAME-tutorial|grep recommendation-v2|awk '{ print $1 }'` -c recommendation -n $USERNAME-tutorial

kubectl apply -f ./../istiofiles/virtual-service-recommendation-v1-mirror-v2.yml -n $USERNAME-tutorial

./../scripts/run.sh http://$(kubectl get route istio-ingressgateway -n istio-system --output 'jsonpath={.status.ingress[].host}')/customer

kubectl logs `kubectl get pods -n $USERNAME-tutorial|grep recommendation-v2|awk '{ print $1 }'` -c recommendation -n $USERNAME-tutorial
