#!/bin/bash
set -x
openstack overcloud deploy \
--stack pop \
--templates \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e ~/custom/network-environment.yaml \
-e ~/custom/storage-environment.yaml \
--control-scale 3 \
--compute-scale 28 \
--ceph-storage-scale 8 \
--control-flavor control \
--compute-flavor compute \
--ceph-storage-flavor ceph-storage \
--ntp-server 173.38.201.67 \
--neutron-network-type vxlan \
--neutron-tunnel-types vxlan
