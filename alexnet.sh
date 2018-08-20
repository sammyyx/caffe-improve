#!/bin/bash
rm nohup.out

sed -i '15c \\t  batch_size: 16384' models/bvlc_alexnet/train_val.prototxt
nohup ./build/tools/caffe train -solver=models/bvlc_alexnet/solver.prototxt -gpu=all
alexnet_2048=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'alexnet-bs_2048-speed:' ${alexnet_2048} > baseline_alexnet.txt
rm nohup.out

sed -i '15c \\t  batch_size: 2048' models/bvlc_alexnet/train_val.prototxt
nohup ./build/tools/caffe train -solver=models/bvlc_alexnet/solver.prototxt -gpu=all
alexnet_256=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'alexnet-bs_256-speed:' ${alexnet_256} >> baseline_alexnet.txt
rm nohup.out

sed -i '15c \\t  batch_size: 1024' models/bvlc_alexnet/train_val.prototxt
nohup ./build/tools/caffe train -solver=models/bvlc_alexnet/solver.prototxt -gpu=all
alexnet_128=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'alexnet-bs_128-speed:' ${alexnet_128} >> baseline_alexnet.txt
rm nohup.out

sed -i '15c \\t  batch_size: 512' models/bvlc_alexnet/train_val.prototxt
nohup ./build/tools/caffe train -solver=models/bvlc_alexnet/solver.prototxt -gpu=all
alexnet_64=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'alexnet-bs_64-speed:' ${alexnet_64} >> baseline_alexnet.txt
rm nohup.out

sed -i '15c \\t  batch_size: 256' models/bvlc_alexnet/train_val.prototxt
nohup ./build/tools/caffe train -solver=models/bvlc_alexnet/solver.prototxt -gpu=all
alexnet_32=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'alexnet-bs_32-speed:' ${alexnet_32} >> baseline_alexnet.txt
rm nohup.out
