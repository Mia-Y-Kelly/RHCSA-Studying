# Mounting systems
* To automatically mount systems, use `/etc/fstab`
    * This generates systemd mounts which can be found `/run/systemd/generator` with the `.mount` extension
    * `systemctl daemon-reload` will help reload mounts
    * If there is an fstab error, you will drop into a troubleshooting tab.
        * Use `mount -a` or `findmnt --verify` BEFORE rebooting
* To mount already mounted filesystems, use `--bind` or `-o bind`
