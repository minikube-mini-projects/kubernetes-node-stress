# Build a Dockerfile and push to dockerhub

```
docker build . -t <docker-hub-accountname>/stress-test:latest
docker push <docker-hub-accountname>/stress-test:latest
```

# Deploy in Kubernetes
>> Update the images name of yours in your dockerhub in depoy yaml file
>> adjust the number of pod to spin up in replica section 
```
kubectl apply -f <deploy-filename.yaml>
```
