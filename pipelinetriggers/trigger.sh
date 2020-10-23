#!/bin/bash

# HMAC generated from payload + GH secret

curl -i \
  -H 'X-GitHub-Event: push' \
  -H 'X-Hub-Signature: sha1=<...>' \
  -H 'Content-Type: application/json' \
  -d '{"ref":"refs/heads/main","head_commit":{"id":"d9c7ccb0713da882d8373169e2a1d705f5959386"}}' \
  http://tekton-triggers.example.com