sudo docker search debian
sudo docker search debian
sudo docker pull debian
sudo docker run -i -t [image]
sudo docker run -i -t [image]
Finally, if we want to use Docker without root privileges, we need to run the following command:
sudo usermod -aG docker $(whoami)
