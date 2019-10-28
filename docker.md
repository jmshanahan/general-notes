sudo docker search debian
sudo docker search debian
sudo docker pull debian
sudo docker run -i -t [image]
sudo docker run -i -t [image]
Finally, if we want to use Docker without root privileges, we need to run the following command:
sudo usermod -aG docker $(whoami)
To run a container in the background mapping port 3000 in the container to 8000 on host machine
docker run -d -p 8000:3000 container-name
When a container is up and running to get into it and run bash commands
docker exec -it <container id> bash

What is the difference between docker kill and docker stop

docker stop will send the signal SIGTERM followed by SIGKILL after a grace period

docker kill sends SIGKILL right away

To create a volume
docker volume create <name of volume>

to list volumes
docker volume ls
To remove volumes
docker volume prune

To remove a single volume
docker volume rm [name of the volume]


To inspect a volume and get its details
docker inspect [name of volume]

To build a container with a prebuild volume. I put the volume under the same directory as the app.
docker run -d -p 8000:3000 --name my-container --volume $(pwd):/logs chrisnoring/node

Note $(pwd):/logs

To get into the container
docker exec -it my-container bash
To kill of a container you will need to kill it and remove it
docker kill my-container && docker rm my-container





