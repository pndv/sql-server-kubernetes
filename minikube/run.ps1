param ($ResetMinikube =(false))

minikube start

kubectl apply -f secret.yaml,persistent-volume-claim.yaml,deployment.yaml,service.yaml

minikube tunnel