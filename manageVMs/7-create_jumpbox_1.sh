azure network public-ip create --resource-group $resourceGroupName \
    --name $publicIPName \
    --location $location \
    --allocation-method Static 

azure network nic create --name $nicName \
    --resource-group $resourceGroupName \
    --location $location \
    --subnet-id subscriptions/3346b9b0-a270-4688-9dc0-45976d2d3165/resourceGroups/ocp_on_azure/providers/Microsoft.Network/virtualNetworks/arctiq-canadacentral-vnet/subnets/default \
    --network-security-group-name $networkSecurityGroup \
    --public-ip-name $publicIPName           

azure vm create --resource-group $resourceGroupName \
    --name $vmName \
    --location $location \
    --vm-size $vmSize \
    --subnet-id subscriptions/3346b9b0-a270-4688-9dc0-45976d2d3165/resourceGroups/ocp_on_azure/providers/Microsoft.Network/virtualNetworks/arctiq-canadacentral-vnet/subnets/default \
    --nic-names $nicName \
    --os-type linux \
    --image-urn RHEL \
    --storage-account-name $storageAccountName \
    --admin-username $adminUserName \
    --ssh-publickey-file ~/.ssh/id_rsa.pub 
    --disable-boot-diagnostics
