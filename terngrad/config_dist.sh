#!/bin/bash
set -e
set -x



################################################
# The path of executables (terngrad/terngrad). Must be the same across all nodes
WORKSPACE="~/github/users/wenwei202/terngrad/terngrad"




################################################
# The script to start worker
#WORKER_SCRIPT="./run_single_worker_alexnet.sh"
WORKER_SCRIPT="./run_single_worker_cifarnet.sh"

# The script to start ps (depending on dataset only)
# Select one from those below
PS_SCRIPT="./run_single_ps_cifar10.sh"
#PS_SCRIPT="./run_single_ps_imagenet.sh"



################################################
# The list of hosts and ports of ps
# Multiple ps not tested yet
PS_HOSTS=( \
  10.236.176.29:2222 \
)



################################################
# The list of hosts and ports of workers
WORKER_HOSTS=( \
  10.236.176.28:2224 \
  10.236.176.29:2226 \
)
# GPU IDs in corresponding workers
WORKER_DEVICES=( \
  1 \
  2 \
)
# Paths of dataset shards in corresponding workers
DATA_DIR=( \
  ~/dataset/cifar10-data-shard-0-499 \
  ~/dataset/cifar10-data-shard-500-999 \
)
