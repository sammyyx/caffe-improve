#!/bin/bash
rm nohup.out

sed -i '12c \\t  batch_size: 1280' models/resnet50/train_val.prototxt
nohup ./build/tools/caffe train -solver=models/resnet50/solver.prototxt -gpu=all
resnet50_256=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'resnet50-bs_256-speed:' ${resnet50_256} > baseline_resnet50.txt
rm nohup.out

sed -i '12c \\t  batch_size: 1024' models/resnet50/train_val.prototxt
nohup ./build/tools/caffe train -solver=models/resnet50/solver.prototxt -gpu=all
resnet50_128=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'resnet50-bs_128-speed:' ${resnet50_128} >> baseline_resnet50.txt
rm nohup.out

sed -i '12c \\t  batch_size: 512' models/resnet50/train_val.prototxt
nohup ./build/tools/caffe train -solver=models/resnet50/solver.prototxt -gpu=all
resnet50_64=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'resnet50-bs_64-speed:' ${resnet50_64} >> baseline_resnet50.txt
rm nohup.out

sed -i '12c \\t  batch_size: 256' models/resnet50/train_val.prototxt
nohup ./build/tools/caffe train -solver=models/resnet50/solver.prototxt -gpu=all
resnet50_32=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'resnet50-bs_32-speed:' ${resnet50_32} >> baseline_resnet50.txt
rm nohup.out
