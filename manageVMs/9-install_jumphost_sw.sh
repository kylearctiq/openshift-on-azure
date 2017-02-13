bash
yum install git -y
yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_6.x | sudo -E bash -
yum install nodejs
node -v -y
npm -v -y
npm install -g azure-cli
git clone https://github.com/kylearctiq/openshift-on-azure.git
cd openshift-on-azure/manageVMs/
chmod +x -R *.sh


#subscription-manager register
#subscription-manager attach --pool <<your poolid>> 
#subscription-manager repos --disable="*"
#subscription-manager repos     --enable="rhel-7-server-rpms"     --enable="rhel-7-server-extras-rpms"     --enable="rhel-7-server-ose-3.4-rpms"
#yum install -y atomic-openshift-utils
