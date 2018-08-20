#!/bin/bash

sed -i '17c \\t  batch_size: 256' models/bvlc_alexnet/train_val.prototxt
alexnet_256=$(./build/tools/caffe train --solver=models/bvlc_alexnet/solver.prototxt | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'alexnet-bs_256-speed:' $alexnet_256 > baseline.txt

sed -i '17c \\t  batch_size: 128' models/bvlc_alexnet/train_val.prototxt
alexnet_128=$(./build/tools/caffe train --solver=models/bvlc_alexnet/solver.prototxt | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'alexnet-bs_128-speed:' $alexnet_128 >> baseline.txt

sed -i '17c \\t  batch_size: 64' models/bvlc_alexnet/train_val.prototxt
alexnet_64=$(./build/tools/caffe train --solver=models/bvlc_alexnet/solver.prototxt | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'alexnet-bs_64-speed:' $alexnet_64 >> baseline.txt

sed -i '17c \\t  batch_size: 32' models/bvlc_alexnet/train_val.prototxt
alexnet_32=$(./build/tools/caffe train --solver=models/bvlc_alexnet/solver.prototxt | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'alexnet-bs_32-speed:' $alexnet_32 >> baseline.txt

sed -i '25c \\t  batch_size: 256' models/bvlc_reference_caffenet/train_val.prototxt
caffenet_256=$(./build/tools/caffe train --solver=models/bvlc_reference_caffenet/solver.prototxt | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'caffenet-bs_256-speed:' $caffenet_256 >> baseline.txt

sed -i '25c \\t  batch_size: 128' models/bvlc_reference_caffenet/train_val.prototxt
caffenet_128=$(./build/tools/caffe train --solver=models/bvlc_reference_caffenet/solver.prototxt | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'caffenet-bs_128-speed:' $caffenet_128 >> baseline.txt

sed -i '25c \\t  batch_size: 64' models/bvlc_reference_caffenet/train_val.prototxt
caffenet_64=$(./build/tools/caffe train --solver=models/bvlc_reference_caffenet/solver.prototxt | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'caffenet-bs_64-speed:' $caffenet_64 >> baseline.txt

sed -i '25c \\t  batch_size: 32' models/bvlc_reference_caffenet/train_val.prototxt
caffenet_32=$(./build/tools/caffe train --solver=models/bvlc_reference_caffenet/solver.prototxt | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END
 {print sum/9}')
echo 'caffenet-bs_32-speed:' $caffenet_32 >> baseline.txt
