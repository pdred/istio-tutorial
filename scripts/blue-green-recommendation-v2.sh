#!/bin/bash
kubectl create -f istiofiles/destination-rule-recommendation-v1-v2.yml -n $USERNAME-tutorial
kubectl create -f istiofiles/virtual-service-recommendation-v2.yml -n $USERNAME-tutorial
