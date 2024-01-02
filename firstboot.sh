#!/bin/sh
mkfs.ext4 /dev/mmcblk0p1    #格式化设备'/dev/mmcbl0p1'为ext4文件系统
chmod +s /usr/bin/sudo      #授予'/usr/bin/sudo'命令执行时的特殊权限
chmod a+s /bin/su           #授予'/bin/su'命令执行时的特殊权限
chown -R szbaijie:szbaijie /home/szbaijie/  #递归更改'/home/szbaijie'目录及其内容的所有权为'szbaijie'
chown lightdm:lightdm -R /var/lib/lightdm   #例同上
chown colord:colord -R /var/lib/colord/     #例同上
rm -rf /etc/systemd/system/multi-user.target.wants/firstboot.service
exit 0