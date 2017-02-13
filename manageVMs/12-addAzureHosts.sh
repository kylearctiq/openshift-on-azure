#!/bin/bash

location="canadacentral"
resourceGroupName="ocp_on_azure"
vnetName="arctiq-canadacentral-vnet"
subnetName="default"
subnetAddressPrefix="10.0.0.0/24"
networkSecurityGroup="master-canadacentral"
storageAccountName="ocpcanadacentral"
adminUserName="arctiqadmin"

# Find subnetId
subnetId="$(azure network vnet subnet show --resource-group $resourceGroupName \
                --vnet-name $vnetName \
                --name $subnetName|grep Id)"
subnetId=${subnetId#*/}

echo "subnetId: $subnetId"

# Add Master Host
publicIPName="ArctiqMaster1PublicIP"
nicName="ArctiqMaster1NIC"
vmName="arctiq-master1"
vmSize="Standard_DS2_V2"
echo "Adding $vmName"

source ./0-createMasterHost.sh

# Add Master Host
#publicIPName="ArctiqMaster2PublicIP"
#nicName="ArctiqMaster2NIC"
#vmName="arctiq-master2"
#vmSize="Standard_DS2_V2"
#echo "Adding $vmName"

#source ./0-createMasterHost.sh

# Add Master Host
#publicIPName="ArctiqMaster3PublicIP"
#nicName="ArctiqMaster3NIC"
#vmName="arctiq-master3"
#vmSize="Standard_DS2_V2"
#echo "Adding $vmName"

#source ./0-createMasterHost.sh

# add additional storage for Registry and Metrics PVs.
azure vm disk attach-new $resourceGroupName $vmName 120

# Add InfraNode1
publicIPName="ArctiqInfraNode1PublicIP"
nicName="ArctiqInfraNode1NIC"
vmName="arctiq-inode1"
vmSize="Standard_DS2_V2"
echo "Adding $vmName"

source ./0-createMasterHost.sh

#Add InfraNode2
publicIPName="ArctiqInfraNode2PublicIP"
nicName="ArctiqInfraNode2NIC"
vmName="arctiq-inode2"
vmSize="Standard_DS2_V2"
echo "Adding $vmName"

source ./0-createMasterHost.sh

#Add AppNode1
nicName="ArctiqNode1NIC"
vmName="arctiq-node1"
#vmSize="Standard_DS2_V12"
vmSize="Standard_DS2_V2"
echo "Adding $vmName"

source ./0-createNodeHost.sh

#Add AppNode2
nicName="ArctiqNode2NIC"
vmName="arctiq-node2"
#vmSize="Standard_DS2_V12"
vmSize="Standard_DS2_V2"
echo "Adding $vmName"

source ./0-createNodeHost.sh

#Add AppNode3
#nicName="ArctiqNode3NIC"
#vmName="arctiq-node3"
#vmSize="Standard_DS2_V12"
#vmSize="Standard_DS2_V2"
#echo "Adding $vmName"

#source ./0-createNodeHost.sh

#Add AppNode4
#nicName="ArctiqNode4NIC"
#vmName="arctiq-node4"
#vmSize="Standard_DS2_V12"
#vmSize="Standard_DS2_V2"
#echo "Adding $vmName"

#source ./0-createNodeHost.sh

#Add NFSNode1 - If you want a seperate NFS Server from the master
#nicName="ArctiqNFS1NIC"
#vmName="arctiq-nfs1"
#vmSize="Standard_DS 2_V12"
#vmSize="Standard_DS2_V2"
#echo "Adding $vmName"

#source ./0-createNodeHost.sh

azure vm list --resource-group $resourceGroupName
