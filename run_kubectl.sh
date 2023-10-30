#!/usr/bin/env bash

#kubectl create -f flink-configuration-configmap.yaml
kubectl create -f flink-master-deploy.yaml
kubectl create -f flink-worker-deploy.yaml
kubectl create -f flink-master-service.yaml