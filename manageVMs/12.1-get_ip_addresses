for i in $(azure network nic list | grep arctiq | awk '{print $2}');do echo $i; azure network nic show $i --resource-group openshift-arctiq | grep "Private IP address"; done
