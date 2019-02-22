#Docker Command Help:

#### Create a docker image based on latest code
```
docker build -t diet-diary:latest .
```

#### Run docker image as a named container
```
docker run -d -p 8080:8080 --name runDiet diet-diary
```

#### Check running container's status
```
docker ps
```

#### Command to enter into running docker container
```
docker exec -it runDiet /bin/bash 
```

#### Access the logs from a running docker container
```
docker logs -f runDiet
```