azure network nic create --name $nicName \
    --resource-group $resourceGroupName \
    --location $location \
    --subnet-id $subnetId \
    --network-security-group-name $networkSecurityGroup \
    --public-ip-name $publicIPName
