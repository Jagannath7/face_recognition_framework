#!/bin/bash
work_path=$(dirname $0)
GLOG_vmodule=MemcachedClient=-1 srun --mpi=pmi2 -p Test -n1 --gres=gpu:8 --ntasks-per-node=1 \
    python -u main.py \
    --config $work_path/config.yaml \
    --load-path $work_path/checkpoints/ckpt_epoch_21.pth.tar \
    --extract