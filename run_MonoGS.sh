#!/bin/bash

scripts=(
    # MonoGS 실행
    # "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/office0.yaml --eval"
    # "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/office1.yaml --eval"
    # "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/office2.yaml --eval"
    "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/office3.yaml --eval"
    "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/office4.yaml --eval"
    "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/room0.yaml --eval"
    "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/room1.yaml --eval"
    "/home/eainx/anaconda3/envs/MonoGS/bin/python slam.py --config configs/rgbd/replica/room2.yaml --eval")

# 로그 디렉토리 생성 (없으면)
mkdir -p /home/eainx/workspace/MonoGS/logs/rgbd

# 실행 루프
for script in "${scripts[@]}"; do
    scene_name=$(echo $script | grep -oP 'configs/rgbd/replica/\K[^.]+')
    log_file="/home/eainx/workspace/MonoGS/logs/rgbd/${scene_name}.log"
    echo "Running: $script"
    echo "Logging to: $log_file"
    # 스크립트 실행과 로그 저장
    eval $script &> "$log_file"
done
