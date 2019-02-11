mkdir -p $HOME/.kube

# oci ce cluster create-kubeconfig --cluster-id ocid1.cluster.oc1.eu-frankfurt-1.aaaaaaaaaezgizldmjrdcyrtgqydszlbgqygenbxmm3ggntfgcrgemzzmjrw --file $HOME/.kube/config --region eu-frankfurt-1
# export KUBECONFIG=$HOME/.kube/config

export KUBECONFIG=./mykubeconfig
mkdir ctd
cp $KUBECONFIG ctd/kubeconfig
kubectl config view
kubectl get nodes
kubectl delete deployment atp2 --ignore-not-found=true
kubectl apply -f atp2.yaml
kubectl get services atp2
kubectl get pods
kubectl describe pods
