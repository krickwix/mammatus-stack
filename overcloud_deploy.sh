openstack --debug overcloud deploy \
--stack pop \
--timeout 240 \
--templates \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/storage-environment.yaml \
-e /home/stack/templates/network-environment.yaml \
-e /home/stack/templates/custo.yaml \
-e /home/stack/templates/param.yaml \
--ntp-server 173.38.201.67 \
--compute-flavor compute \
--control-flavor control \
--ceph-storage-flavor ceph-storage \
--control-scale 3 \
--compute-scale 1 \
--ceph-storage-scale 1 \
2>&1 | tee /tmp/overcloud_deploy.log
