#!/bin/bash
rm nohup.out
sed -i '14c \\t  batch_size: 256' models/bvlc_googlenet/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/bvlc_googlenet/solver.prototxt
googlenet_256=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'googlenet-bs_256-speed:' ${googlenet_256} > baseline_googlenet.txt
rm nohup.out

sed -i '14c \\t  batch_size: 128' models/bvlc_googlenet/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/bvlc_googlenet/solver.prototxt
googlenet_128=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'googlenet-bs_128-speed:' ${googlenet_128} >> baseline_googlenet.txt
rm nohup.out

sed -i '14c \\t  batch_size: 64' models/bvlc_googlenet/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/bvlc_googlenet/solver.prototxt
googlenet_64=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'googlenet-bs_64-speed:' ${googlenet_64} >> baseline_googlenet.txt
rm nohup.out

sed -i '14c \\t  batch_size: 32' models/bvlc_googlenet/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/bvlc_googlenet/solver.prototxt
googlenet_32=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'googlenet-bs_32-speed:' ${googlenet_32} >> baseline_googlenet.txt
rm nohup.out
