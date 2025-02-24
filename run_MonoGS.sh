#!/bin/bash

scripts=(
    # MonoGS 실행
    # "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/office0.yaml --eval"
    # "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/office1.yaml --eval"
    "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/office2.yaml --eval"
    "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/office3.yaml --eval"
    "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/office4.yaml --eval"
    "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/room0.yaml --eval"
    "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/room1.yaml --eval"
    "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/room2.yaml --eval")


# 실행 루프
for script in "${scripts[@]}"; do
    echo "Running: $script"
    eval $script
done
