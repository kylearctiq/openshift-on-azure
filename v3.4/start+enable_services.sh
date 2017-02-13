for node in $(cat node_list); do echo $node; ssh $node '/bin/bash -c "sudo systemctl start docker | grep Active"'; done
for node in $(cat node_list); do echo $node; ssh $node '/bin/bash -c "sudo systemctl start dnsmasq | grep Active"'; done
for node in $(cat node_list); do echo $node; ssh $node '/bin/bash -c "sudo systemctl start  NetworkManager | grep Active"'; done

for node in $(cat node_list); do echo $node; ssh $node '/bin/bash -c "sudo systemctl enable docker | grep Active"'; done
for node in $(cat node_list); do echo $node; ssh $node '/bin/bash -c "sudo systemctl enable dnsmasq | grep Active"'; done
for node in $(cat node_list); do echo $node; ssh $node '/bin/bash -c "sudo systemctl  enable NetworkManager | grep Active"'; done

for node in $(cat node_list); do echo $node; ssh $node '/bin/bash -c "sudo systemctl status docker | grep Active"'; done
for node in $(cat node_list); do echo $node; ssh $node '/bin/bash -c "sudo systemctl status dnsmasq | grep Active"'; done
for node in $(cat node_list); do echo $node; ssh $node '/bin/bash -c "sudo systemctl  status NetworkManager | grep Active"'; done
