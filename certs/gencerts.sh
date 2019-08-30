#!/bin/bash
# master script to execute generation of all certs and distribute to compute instances

# creating CA
echo "creating CA"
./ca.sh

# creating kube admin client cert
echo "creating kube admin client cert"
./kube_admin_client.sh

# creating kublet client cert
echo "creating kublet client cert"
./kube_client.sh

# creating kube controller manager client cert
echo "creating kube controller manager client cert"
./kube_controller_manager.sh

# creating kube proxy client cert
echo "creating kube proxy client cert"
./kube_proxy.sh

# creatking kube scheduler client cert
echo "creatking kube scheduler client cert"
./kube_scheduler.sh

# creating kube API cert
echo "creating kube API cert"
./kube_api.sh

# creating kube service account cert
echo "creating kube service account cert"
./kube_svc_acct.sh

# distributing worker certs
echo "distributing worker certs"
./dist_worker.sh

# distributing controller certs
echo "distributing controller certs"
./dist_controller.sh