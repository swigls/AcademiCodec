#!/bin/bash
source path.sh
log_root=logs
# 24kHz *.wav in train_data_dir
train_data_dir=dump/train
valid_data_dir=dump/valid

python3 ${BIN_DIR}/main3_ddp.py \
        --BATCH_SIZE 16 \
        --N_EPOCHS 300 \
        --save_dir ${log_root} \
        --PATH ${log_root} \
        --train_data_path ${train_data_dir} \
        --valid_data_path ${valid_data_dir} \
        --sr 24000 \
        --ratios 6 5 4 2 \
        --target_bandwidths 1 2 4 8 12