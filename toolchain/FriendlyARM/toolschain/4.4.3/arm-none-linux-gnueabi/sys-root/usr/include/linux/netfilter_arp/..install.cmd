cmd_/opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include/linux/netfilter_arp/.install := perl /opt/FriendlyARM/mini2440/build-toolschain/working/src/linux-2.6.32.2/scripts/headers_install.pl /opt/FriendlyARM/mini2440/build-toolschain/working/src/linux-2.6.32.2/include/linux/netfilter_arp /opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include/linux/netfilter_arp arm arp_tables.h arpt_mangle.h; perl /opt/FriendlyARM/mini2440/build-toolschain/working/src/linux-2.6.32.2/scripts/headers_install.pl /opt/FriendlyARM/mini2440/build-toolschain/working/arm-none-linux-gnueabi/build/build-kernel-headers/include/linux/netfilter_arp /opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include/linux/netfilter_arp arm ; touch /opt/FriendlyARM/toolschain/4.4.3/arm-none-linux-gnueabi//sys-root/usr/include/linux/netfilter_arp/.install