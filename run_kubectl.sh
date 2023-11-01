#!/usr/bin/env bash

#kubectl create -f flink-configuration-configmap.yaml
kubectl apply -f flink-master-deploy.yaml
kubectl apply -f flink-worker-deploy.yaml
#kubectl apply -f flink-rest-deploy.yaml
kubectl apply -f flink-master-service.yaml
#kubectl apply -f flink-api-service.yaml
