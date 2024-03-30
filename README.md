# Build a Dockerfile and push to dockerhub

```
docker build . -t <docker-hub-accountname>/stress-test:latest
docker push <docker-hub-accountname>/stress-test:latest
```

# Deploy in Kubernetes
- Update the images name of yours in your dockerhub in depoy yaml file
- adjust the number of pod to spin up in replica section 
- adjust the node name in which you want to deploy this deployment pods

```
kubectl apply -f <deploy-filename.yaml>
```


>> IF you dont want to deploy in a specific node or you are using Minukube
```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: stress-test
spec:
  replicas: 1
  selector:
    matchLabels:
      app: stress-test
  template:
    metadata:
      labels:
        app: stress-test
    spec:
      containers:
      - name: stress-test
        image: stress-test:latest
```
