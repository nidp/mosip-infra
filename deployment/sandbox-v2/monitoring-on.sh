#!/bin/sh
# Run this script to exchange turn off pods in monitoring namespace
kc1 scale deployment elasticsearch-master --replicas=1
kc1 scale deployment graf-grafana  --replicas=1
kc1 scale deployment kibana-kibana --replicas=1
kc1 scale deployment metrics-server --replicas=1
kc1 scale deployment prom-prometheus-alertmanager --replicas=1
kc1 scale deployment prom-prometheus-pushgateway --replicas=1
kc1 scale deployment prom-prometheus-server --replicas=1
