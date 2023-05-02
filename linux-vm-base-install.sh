yum install -y open-vm-tools
#remove uid from nic
#sed -i '/UUID/d' /etc/sysconfig/network-scripts/ifcfg-e*
sed -i '/uuid/d' /etc/NetworkManager/system-connections/ens192.nmconnection
#allow empty ssh
sed -i 's/#PermitEmptyPasswords no/PermitEmptyPasswords yes/g' /etc/ssh/sshd_config
#clear root password
passwd -d root
#update
yum update -y
#clear history
history -c
init 0