#!/system/bin/sh
#added by link2sd
LOG=/data/link2sd-install-recovery.log
echo "$(date) mounting..." > $LOG
mount -t ext3 -o rw /dev/block/vold/179:2 /data/sdext2 1>>$LOG 2>>$LOG

mount -t ext3 -o rw /dev/block/mmcblk0p2 /data/sdext2 1>>$LOG 2>>$LOG

mount >> $LOG
echo "$(date) mount finished" >> $LOG
