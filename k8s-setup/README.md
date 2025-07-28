
=========
SETUP
=========

docker build -t fio-alpine .

kind load docker-image fio-alpine

kind create cluster --config 1_kind-config.yaml

k apply -f 2_resources.yaml


==========
CLEANUP
==========

kubectl delete deployment fio-swarm

kind delete clusters kind
