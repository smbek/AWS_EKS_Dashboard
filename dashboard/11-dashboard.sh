sudo aws eks --region us-east-1 update-kubeconfig --name demo

sudo helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
sudo helm repo update

sudo helm install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard
# sudo kubectl edit svc kubernetes-dashboard-kong-proxy
# sudo kubectl get pods
# sudo kubectl get svc
# sudo kubectl get node -o wide 
# sudo kubectl get pods
# sudo kubectl get sa
# sudo kubectl edit sa kubernetes-dashboard-kong 
# secrets:
#   - name: admin-token
# vi secret.yaml
# apiVersion: v1
# kind: Secret
# metadata:
#   name: admin-token
#   annotations:
#     kubernetes.io/service-account.name: kubernetes-dashboard-kong
# type: kubernetes.io/service-account-token

# kubectl apply -f secret.yaml

# kubectl get secret

# kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=default:kubernetes-dashboard-kong

# kubectl get secret $(kubectl get sa kubernetes-dashboard-kong  -o jsonpath='{.secrets[0].name}') -o go-template='{{.data.token | base64decode}}'

# 