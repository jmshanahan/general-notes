sudo docker search debian

sudo docker search debian

sudo docker pull debian

sudo docker run -i -t [image]

sudo docker run -i -t [image]

docker run -dit [image]
-d detatch ie to run the container in the background
-i interactive with this option stdin is left open this option allows you to type commands into the container.

-t allocates a sudo tty or sudo terminal

docker ps
Used to confirm that a container is running

docker stop [container id]

To inspect a volume and get its details
docker inspect [name of volume]

docker --help
docker images --help

### Images

docker pull [image]
pulls an image down from the repository Dockerhub

docker images lists the images on the local system

also
docker images --no-trunc do not truncate the images

docker rmi [image]
rmi removes an image

docker system df
Shows how much disk space is being used by docker.

Finally, if we want to use Docker without root privileges, we need to run the following command:
sudo usermod -aG docker \$(whoami)

### Containers

docker run dit [image]

- d run in the background
- it interactive terminal
  This is a very common set of commands.

To give a container a name when you start it
docker run -dit --name=[name][image]

check what containers are running
docker ps
list both running and stopped containers
docker ps -a
To show the latest container that has been started
docker ps -l

To get a container to start when the machine boots up
docker run -dit --restart=always --name=postgres postgres

To check it we can check the RestartPolicy
docker inspect [container] | grep -A3 RestartPolicy

Note The grep -A3 tells grep to print the matching line + the number of lines after the match. In this case 3

docker stop
will send the signal SIGTERM followed by SIGKILL after a grace period

docker kill
sends SIGKILL right away

### Interacting with Containers

To start a container that we can interact via the shell
docker run -it --name apache httpd /bin/bash

To run a container in the background mapping port 3000 in the container to 8000 on host machine
docker run -d -p 8000:3000 container-name

When a container is up and running to get into it and run bash commands
docker exec -it <container id> bash

What is the difference between docker kill and docker stop

To remove a container
docker rm [container]

To restart a container
docker start

To remove all stopped containers
docker system prune it can be dangerous so use it with cation.

To automatically remove a container after it has run
docker ps --rm [container] Try hello-world container.

Expose a port to the outside world.
This command is running an nginx container and accessing a file on our harddisk and mapping it to /usr/... with the options :ro

To get into the container that is currently running
docker exec -it my-container bash
To kill of a container you will need to kill it and remove it
docker kill my-container && docker rm my-container

docker run -p 8080:80 --name another_nginx -v \${PWD}/webpages:/usr/share/nginx/html:ro -d nginx

To get a list of processes running within a docker container use
docker top

To create a volume
docker volume create <name of volume>

to list volumes
docker volume ls
To remove volumes
docker volume prune

To remove a single volume
docker volume rm [name of the volume]

To build a container with a prebuild volume. I put the volume under the same directory as the app.
docker run -d -p 8000:3000 --name my-container --volume \$(pwd):/logs chrisnoring/node

Note \$(pwd):/logs
