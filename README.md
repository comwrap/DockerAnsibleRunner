# DockerAnsibleRunner


## Build container
```sh
docker build -t sips4711/dockeransiblerunner .
```

## Create a volume
```sh
docker volume create dockeransiblerunner
```


## Generate SSH Keys
```sh
docker run --rm \
 -v dockeransiblerunner:/root/ \
 -it sips4711/dockeransiblerunner ssh-keygen
```


## Print SSH Pub Key. 
Add this key to GitLab "Project XYZ / Settings / Repository / Deploy Keys"
```sh
docker run --rm \
 -v dockeransiblerunner:/root/ \
 -it sips4711/dockeransiblerunner cat /root/.ssh/id_rsa.pub
```



## Run container
```sh
docker run --rm \
 --name dockeransiblerunner \
 -v dockeransiblerunner:/root/ \
 -it sips4711/dockeransiblerunner /bin/ash
```



## Cleanup 
```sh
docker volume rm dockeransiblerunner
docker rmi sips4711/dockeransiblerunner
```
