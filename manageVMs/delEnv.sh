#!/bin/bash
#echo $resourceGroupName
#echo $nicName
#echo $vmName
#echo $publicIPName

azure vm delete --resource-group openshift-arctiq \
    --name arctiq-master1 -q
azure vm delete --resource-group openshift-arctiq \
    --name arctiq-master2 -q
azure vm delete --resource-group openshift-arctiq \
    --name arctiq-master3 -q
   
azure vm delete --resource-group openshift-arctiq \
    --name arctiq-inode1 -q
azure vm delete --resource-group openshift-arctiq \
    --name arctiq-inode2 -q
azure vm delete --resource-group openshift-arctiq \
    --name arctiq-node1 -q
azure vm delete --resource-group openshift-arctiq \
    --name arctiq-node2 -q
azure vm delete --resource-group openshift-arctiq \
    --name arctiq-node3 -q

azure network nic delete --name ArctiqMaster1NIC \
    --resource-group openshift-arctiq -q
azure network nic delete --name ArctiqMaster2NIC \
    --resource-group openshift-arctiq -q
azure network nic delete --name ArctiqMaster3NIC \
    --resource-group openshift-arctiq -q
    
azure network nic delete --name ArctiqInfraNode1NIC \
    --resource-group openshift-arctiq -q
azure network nic delete --name ArctiqInfraNode2NIC \
    --resource-group openshift-arctiq -q
azure network nic delete --name ArctiqInfraNode1NIC \
    --resource-group openshift-arctiq -q

azure network nic delete --name ArctiqNode1NIC \
    --resource-group openshift-arctiq -q
azure network nic delete --name ArctiqNode2NIC \
    --resource-group openshift-arctiq -q
azure network nic delete --name ArctiqNode3NIC \
    --resource-group openshift-arctiq -q

azure network public-ip delete --name ArctiqMaster1PublicIP \
 --resource-group openshift-arctiq -q
 azure network public-ip delete --name ArctiqMaster2PublicIP \
 --resource-group openshift-arctiq -q
 azure network public-ip delete --name ArctiqMaster3PublicIP \
 --resource-group openshift-arctiq -q
 
azure network public-ip delete --name ArctiqInfraNode1PublicIP \
 --resource-group openshift-arctiq -q
azure network public-ip delete --name ArctiqInfraNode2PublicIP \
 --resource-group openshift-arctiq -q
