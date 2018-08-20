#!/bin/bash
rm nohup.out

sed -i '25c \\t  batch_size: 256' models/bvlc_reference_caffenet/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/bvlc_reference_caffenet/solver.prototxt
caffenet_256=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'caffenet-bs_256-speed:' ${caffenet_256} > baseline_caffenet.txt
rm nohup.out

sed -i '25c \\t  batch_size: 128' models/bvlc_reference_caffenet/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/bvlc_reference_caffenet/solver.prototxt
caffenet_128=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'caffenet-bs_128-speed:' ${caffenet_128} >> baseline_caffenet.txt
rm nohup.out

sed -i '25c \\t  batch_size: 64' models/bvlc_reference_caffenet/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/bvlc_reference_caffenet/solver.prototxt
caffenet_64=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'caffenet-bs_64-speed:' ${caffenet_64} >> baseline_caffenet.txt
rm nohup.out

sed -i '25c \\t  batch_size: 32' models/bvlc_reference_caffenet/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/bvlc_reference_caffenet/solver.prototxt
caffenet_32=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'caffenet-bs_32-speed:' ${caffenet_32} >> baseline_caffenet.txt
rm nohup.out
