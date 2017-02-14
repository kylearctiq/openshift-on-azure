sudo bash
yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_6.x | sudo -E bash -
yum install nodejs
node -v -y
npm -v -y
npm install -g azure-cli
cd openshift-on-azure/manageVMs/
chmod +x -R *.sh

subscription-manager register
subscription-manager attach --pool 8a85f98455374103015538e0fdf20bd4
subscription-manager repos --disable="*"
subscription-manager repos     --enable="rhel-7-server-rpms"     --enable="rhel-7-server-extras-rpms"     --enable="rhel-7-server-ose-3.4-rpms"
yum install -y atomic-openshift-utils
