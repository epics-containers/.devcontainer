#!/bin/bash

# DLS Specific script to move the cluster certificates into the user's .kube
# directory. This avoids having to mount /dls_sw/apps inside the dev=e7
# container

# this pattern would work for any institution that stores its cluster
# certificates on a shared filesystem.

cp /dls_sw/apps/kubernetes/pollux/ca.crt ${HOME}/.kube/pollux.crt
sed -i s=/dls_sw/apps/kubernetes/pollux/ca.crt=pollux.crt= ${HOME}/.kube/config_pollux
cp /dls_sw/apps/kubernetes/argus/ca.crt ${HOME}/.kube/argus.crt
sed -i s=/dls_sw/apps/kubernetes/argus/ca.crt=argus.crt= ${HOME}/.kube/config_argus