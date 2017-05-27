openstack --debug overcloud deploy \
--stack pop \
--timeout 240 \
--templates \
-e /home/stack/templates/param.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /home/stack/templates/network-environment.yaml \
-e /home/stack/templates/storage-environment.yaml \
--ntp-server 173.38.201.67 \
2>&1 | tee /tmp/overcloud_deploy.log
