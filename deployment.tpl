apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment1
  labels:
    app: nginx
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: "gcr.io/searce-playground/semaphore-example@IMAGE"
        ports:
        - containerPort: 80
