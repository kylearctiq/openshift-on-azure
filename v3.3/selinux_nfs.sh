for node in $(cat node_list); do echo $node; ssh $node '/bin/bash -c "sudo /sbin/setsebool -P virt_use_nfs 1 &&  sudo /sbin/setsebool -P virt_sandbox_use_nfs 1 "'; done
