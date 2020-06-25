git clone https://github.com/GuillaumeSadlerOC/DevOps_Docker.git
ls
cd DevOps_Docker/
ls
docker build -t debian-nginx-image .
sudodocker build -t debian-nginx-image .
sudo docker build -t debian-nginx-image .
sudo docker run -d -p 80:80 debian-nginx-image
exit
