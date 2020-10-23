#!/bin/bash
set -euo pipefail
cd ${0%/*}

#kubectl delete pipelineruns.tekton.dev -n tekton-pipelines pipelinerun --ignore-not-found
kubectl create -f pipelinerun.yml -n tekton-pipelines

sleep 1
tkn pipelinerun logs -f -n tekton-pipelines
