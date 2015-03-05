A docker setup to run NYTimes Labs [Hive](https://github.com/nytlabs/hive) framework

### To run 

1. Launch instance — security rules need only allow ports 80 & 22
2. Install docker for your [platform](https://docs.docker.com/installation/)
3. Install docker-compose ``sudo sh -c "curl -L https://github.com/docker/compose/releases/download/1.1.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"``
4. Make executable `chmod +x /usr/local/bin/docker-compose`
5. Clone this repo and change into the directory
6. Run fig up `sudo docker-compose up -d`
7. Check that processes are running `sudo docker-compose ps`

If you point your browser at port 8888 of wherever you have the container running, you should see the hive heartbeat message.