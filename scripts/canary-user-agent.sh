#!/bin/bash
./scripts/clean.sh
kubectl create -f istiofiles/destination-rule-recommendation-v1-v2.yml -n $USERNAME-tutorial
kubectl create -f istiofiles/virtual-service-recommendation-v1.yml -n $USERNAME-tutorial
kubectl replace -f istiofiles/virtual-service-safari-recommendation-v2.yml -n $USERNAME-tutorial
