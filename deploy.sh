# !/bin/bash
tar -cvf build.tar build
scp build.tar root@100.88.64.79:/data1/sammy/caffes/nvidia/nv-caffe/
ssh root@100.88.64.79 "cd /data1/sammy/caffes/nvidia/nv-caffe; tar -xvf build.tar"
echo done!
