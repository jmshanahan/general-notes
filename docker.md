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

