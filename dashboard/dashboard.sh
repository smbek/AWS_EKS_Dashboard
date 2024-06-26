aws eks --region us-east-1 update-kubeconfig --name demo

sudo helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
sudo helm repo update

sudo helm install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard
# sudo kubectl edit svc kubernetes-dashboard-kong-proxy
# sudo kubectl get pods
# sudo kubectl get svc
# sudo kubectl get node -o wide 
# sudo kubectl get pods