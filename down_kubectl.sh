#!/usr/bin/env bash

#kubectl delete -f flink-configuration-configmap.yaml
kubectl delete -f flink-master-deploy.yaml
kubectl delete -f flink-worker-deploy.yaml
kubectl delete -f flink-master-service.yaml