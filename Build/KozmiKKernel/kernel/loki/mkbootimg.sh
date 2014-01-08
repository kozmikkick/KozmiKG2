#!/sbin/sh
echo \#!/sbin/sh > /tmp/createnewboot.sh
echo /tmp/loki/mkbootimg --kernel /tmp/loki/zImage --ramdisk /tmp/loki/boot.img-ramdisk.gz --cmdline "console=ttyHSL0,115200,n8 androidboot.hardware=g2 user_debug=31 msm_rtb.filter=0x0" --base 0x00000000 --offset 0x05000000 --tags-addr 0x04800000 --pagesize 2048 --dt /tmp/loki/dt.img -o /tmp/loki/newboot.img >> /tmp/loki/createnewboot.sh
chmod 777 /tmp/loki/createnewboot.sh
/tmp/loki/createnewboot.sh
return $?
