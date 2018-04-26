#!/usr/bin/env bash

cd ..

#to run without pose noise
python train_active_mvnet.py --is_training=True --task_name='gru_nostop_iou_longermem_ftDQN_coef1_lastrecon_NObn' \
     --max_episode_length=4 --reward_type='IoU' --learning_rate=5e-4 --burn_in_length=1 --burn_in_iter=1 \
     --test_every_step=1 --save_every_step=200 --max_iter=10000 --batch_size=4 --voxel_resolution=64 --if_bn=False \
     --resolution=128 --category='03001627' --unet_name='U_VALID' --agg_name='GRU' --mem_length=100 \
     --use_coef=False --loss_coef=5 --if_save_eval=True --test_episode_num=20 --GBL_thread=True --reward_weight=10 \
     --delta=20.0 --reg_act=0.01 --penalty_weight=0 --finetune_dqn_only=True --gamma=0 --burin_opt=1 \
     --pretrain_restore=True --pretrain_restore_path='/projects/katefgroup/ziyan/models/MVnet_coef1_chair/pretrain_model.ckpt-20000'

#to run with pose noise
python train_active_mvnet.py --is_training=True --task_name='gru_nostop_iou_longermem_ftDQN_coef1_lastrecon_NObn' \
     --max_episode_length=4 --reward_type='IoU' --learning_rate=5e-4 --burn_in_length=1 --burn_in_iter=1 \
     --test_every_step=1 --save_every_step=200 --max_iter=10000 --batch_size=4 --voxel_resolution=64 --if_bn=False \
     --resolution=128 --category='03001627' --unet_name='U_VALID' --agg_name='GRU' --mem_length=100 \
     --use_coef=False --loss_coef=5 --if_save_eval=True --test_episode_num=20 --GBL_thread=True --reward_weight=10 \
     --delta=20.0 --reg_act=0.01 --penalty_weight=0 --finetune_dqn_only=True --gamma=0 --burin_opt=1 \
     --pretrain_restore=True --pretrain_restore_path='/projects/katefgroup/ziyan/models/MVnet_coef1_chair/pretrain_model.ckpt-20000' --pose_noise=True
