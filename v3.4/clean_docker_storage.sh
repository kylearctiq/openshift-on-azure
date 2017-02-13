wipefs -a /dev/sdc
/usr/bin/rm -rf /var/lib/docker/*
docker-storage-setup --reset
docker-storage-setup
systemctl start docker
