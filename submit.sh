#!/bin/bash

#SBATCH --nodes=1
#SBATCH --gres=gpu:rtxa6000:1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=32gb
#SBATCH --qos high
#SBATCH -t 02:00:00

# export NCCL_DEBUG=INFO
# export PYTHONFAULTHANDLER=1
# export NCCL_IB_DISABLE=1

module add cuda
module add Python3/3.11.2

# ulimit -n 2048
source /fs/nexus-scratch/shile/470extra_credit/.venv/bin/activate

python3 mbart_training.py