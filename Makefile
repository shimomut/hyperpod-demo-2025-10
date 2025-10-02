SHELL := /bin/bash

deploy-sft-htpo:
	kubectl apply -f sft_htpo.yaml

delete-sft-htpo:
	kubectl delete -f sft_htpo.yaml

deploy-sft-ray:
	kubectl apply -f sft_ray.yaml

delete-sft-ray:
	kubectl delete -f sft_ray.yaml

list-hp-training-jobs:
	kubectl get HyperPodPyTorchJob -A

list-ray-jobs:
	kubectl get RayJob -A

list-pods:
	kubectl get pods

logs-sft-htpo:
	stern qwen

