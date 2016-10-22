#!/bin/bash
set -x
openstack overcloud update stack pop -i \
--templates \
-e /usr/share/openstack-tripleo-heat-templates/overcloud-resource-registry-puppet.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e ~/custom/network-environment.yaml \
-e ~/custom/storage-environment.yaml
