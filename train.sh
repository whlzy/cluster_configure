#!/bin/bash

T=`date +%m%d%H%M`
PARTITION=gcc
NUM_GPU=$1

g=$((${NUM_GPU}<8?${NUM_GPU}:8))

srun --mpi=pmi2 -p ${PARTITION} -n${NUM_GPU} --gres=gpu:$g --ntasks-per-node=$g \
    --job-name=$cfg \
    --cpus-per-task 6 \
python main.py
