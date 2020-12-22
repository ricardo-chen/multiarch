在ARM64/X86_64 host 上用Docker方式编译多个目标平台

首先要在host上将qemu-user-static作为执行异构平台代码的解释器（仿真方式执行）

sudo apt-get install binfmt-support qemu-user-static
ls /proc/sys/fs/binfmt_misc/
sudo ./register.sh -- -r
sudo ./register.sh -s -- -p arm
docker buildx build --platform linux/arm/v7 -t roccen/demo:armhf . 
docker run --rm roccen/demo:armhf
