#!/bin/bash

location="westus2"
resourceGroupName="openshift-workshop"
vnetName="openshift-workshop-westus2-vnet"
subnetName="default"
subnetAddressPrefix="10.0.0.0/24"
networkSecurityGroup="master-workshop-westus2"
storageAccountName="openshiftwkshpwestus2"
adminUserName="veer"

# Find subnetId
subnetId="$(azure network vnet subnet show --resource-group $resourceGroupName \
                --vnet-name $vnetName \
                --name $subnetName|grep Id)"
subnetId=${subnetId#*/}  

echo "subnetId: $subnetId"

# Add Master Host
publicIPName="devdayMasterPublicIP"
nicName="devdayMasterNIC"
vmName="devday-master"
vmSize="Standard_DS2_V2"
echo "Adding $vmName"
source ./deleteMaster.sh


# Add InfraNode1
publicIPName="devdayInfraNode1PublicIP"
nicName="devdayInfraNode1NIC"
vmName="devday-infranode1"
vmSize="Standard_DS2_V2"
echo "Adding $vmName"

source ./deleteMaster.sh

#Add InfraNode2
publicIPName="devdayInfraNode2PublicIP"
nicName="devdayInfraNode2NIC"
vmName="devday-infranode2"
vmSize="Standard_DS2_V2"
echo "Adding $vmName"

source ./deleteMaster.sh

#Add AppNode1
nicName="devdayNode1NIC"
vmName="devday-node1"
vmSize="Standard_DS12_V2"
echo "Adding $vmName"

source ./deleteNode.sh

#Add AppNode2
nicName="devdayNode2NIC"
vmName="devday-node2"
vmSize="Standard_DS12_V2"
echo "Adding $vmName"

source ./deleteNode.sh

#Add AppNode3
nicName="devdayNode3NIC"
vmName="devday-node3"
vmSize="Standard_DS12_V2"
echo "Adding $vmName"

source ./deleteNode.sh

azure vm list --resource-group $resourceGroupName








