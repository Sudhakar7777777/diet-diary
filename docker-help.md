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

### Sample docker image uploaded to DockerHub
https://cloud.docker.com/repository/docker/sudhakar7777777/diet-diary

#### Maven command to push image to DockerHub
```
./mvnw dockerfile:push -Ddockerfile.username=<<username>> -Ddockerfile.password=<<password>>
```

## Single Line Build & Run command
```
docker build -t sudhakar7777777/diet-diary . && docker run -p 127.0.0.1.:8080:8080 -p 127.0.0.1.:5005:5005 -v /var/lib/docker:/tmp --env SPRING_PROFILES_ACTIVE=dev --env JAVA_OPTS=-agentlib:jdwp=transport=dt_socket,address=5005,server=y,suspend=n --name runDiet sudhakar7777777/diet-diary 
``` 