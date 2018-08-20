#!/bin/bash
rm nohup.out
sed -i '11c \\t  batch_size: 256' models/inception_v3/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/inception_v3/solver.prototxt
inceptionv3_256=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'inceptionv3-bs_256-speed:' ${inceptionv3_256} > baseline_inceptionv3.txt
rm nohup.out

sed -i '11c \\t  batch_size: 128' models/inception_v3/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/inception_v3/solver.prototxt
inceptionv3_128=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'inceptionv3-bs_128-speed:' ${inceptionv3_128} >> baseline_inceptionv3.txt
rm nohup.out

sed -i '11c \\t  batch_size: 64' models/inception_v3/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/inception_v3/solver.prototxt
inceptionv3_64=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'inceptionv3-bs_64-speed:' ${inceptionv3_64} >> baseline_inceptionv3.txt
rm nohup.out

sed -i '11c \\t  batch_size: 32' models/inception_v3/train_val.prototxt
nohup ./build/tools/caffe train --solver=models/inception_v3/solver.prototxt
inceptionv3_32=$(cat nohup.out | grep iter/s | awk 'NR>1 {print substr($7, 2)}' | awk '{sum += $1};END {print sum/9}')
echo 'inceptionv3-bs_32-speed:' ${inceptionv3_32} >> baseline_inceptionv3.txt
rm nohup.out
