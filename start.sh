echo -e "\033[32m Criando cluster kubernetes com K3D\033[0m"
k3d cluster create $1 --servers $2 --agents $3 -p "30000:30000@loadbalancer"
echo -e "\033[32m Realizando deploy\033[0m"
kubectl apply -f k8s/deploy.yaml && watch 'kubectl get all'