#!/bin/bash


benchmark="411.image-recognition"
num=$1

for ((j=1; j<=num; j++))
do
    cd ~/serverless-benchmarks${j}
    source ./python-venv/bin/activate
    ./sebs.py local start $benchmark large out.json --config config/example.json --deployments 1 --verbose --no-remove-containers
done
