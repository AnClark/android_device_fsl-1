cmd_/opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include/asm/.check := for f in a.out.h auxvec.h bitsperlong.h byteorder.h errno.h fcntl.h hwcap.h ioctl.h ioctls.h ipcbuf.h mman.h msgbuf.h param.h poll.h posix_types.h ptrace.h resource.h sembuf.h setup.h shmbuf.h sigcontext.h siginfo.h signal.h socket.h sockios.h stat.h statfs.h swab.h termbits.h termios.h types.h unistd.h ; do echo "/opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include/asm/$${f}"; done | xargs perl /opt/FriendlyARM/mini2440/build-toolschain/working/src/linux-2.6.32.2/scripts/headers_check.pl /opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include arm; touch /opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include/asm/.check