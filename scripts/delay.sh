#!/bin/bash
./scripts/clean.sh
kubectl create -f istiofiles/virtual-service-recommendation-delay.yml -n $USERNAME-tutorial
kubectl create -f istiofiles/destination-rule-recommendation.yml -n $USERNAME-tutorial
