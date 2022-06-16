#!/usr/bin/env bash
SHA=$(git rev-parse main)
kubectl set image deployments/back back=aleczheng/license-back:$SHA

