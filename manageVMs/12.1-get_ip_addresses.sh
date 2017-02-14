for i in $(azure network nic list | grep rctiq | awk '{print $2}');do echo $i; azure network nic show $i --resource-group $resourceGroupName| grep "Private IP address"; done
