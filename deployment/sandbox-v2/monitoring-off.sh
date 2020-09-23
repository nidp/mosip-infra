#!/bin/sh
# Run this script to exchange turn off pods in monitoring namespace
kubectl --kubeconfig $HOME/.kube/mzcluster.config scale deployment elasticsearch-master --replicas=0
kubectl --kubeconfig $HOME/.kube/mzcluster.config scale deployment graf-grafana  --replicas=0
kubectl --kubeconfig $HOME/.kube/mzcluster.config scale deployment kibana-kibana --replicas=0
kubectl --kubeconfig $HOME/.kube/mzcluster.config scale deployment metrics-server --replicas=0
kubectl --kubeconfig $HOME/.kube/mzcluster.config scale deployment prom-prometheus-alertmanager --replicas=0
kubectl --kubeconfig $HOME/.kube/mzcluster.config scale deployment prom-prometheus-pushgateway --replicas=0
kubectl --kubeconfig $HOME/.kube/mzcluster.config scale deployment prom-prometheus-server --replicas=0
