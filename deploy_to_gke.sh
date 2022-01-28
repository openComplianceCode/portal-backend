#!/usr/bin/env bash
SHA=$(git rev-parse main)
kubectl set image deployments/back front=aleczheng/license-back:$SHA

