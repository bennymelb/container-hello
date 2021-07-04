# README
This is a sample docker app that prints out an environmental variable called "HELLO"

## How to run this app 
This is assuming you have an linux system with bash and docker installed. How to install docker is not covered by this guide here. 

### 1. Build the docker image
This will build a container image call HELLO in your local system
```bash
[blo@laptop hello]$ ./build.sh
```

### 2. Run the container using the image built in step 1
When running the container, you will need to pass in the enviroment variable HELLO, I set it to "good morning" for example, you can set it to any text you want.
```bash 
docker run --rm --env HELLO="good morning" hello
```
The --rm flag tells docker to destory the container when it exit.
If you want to have an interactive shell with the container you can launch it using the -it flag
```bash
docker run -it --rm --env HELLO="good morning" hello
``` 

### Permission error when running build script or Docker command
For Fedora user like me, you can use podman instead of docker as it does not needs a docker deamon which runs on root privileges, podman can run without being root or sudo.
If you have podman installed, simply update the build script to use podman instead of docker.
And when you run the container, use podman to launch it instead of docker. 