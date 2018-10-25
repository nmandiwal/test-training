docker run -it -p 8080:8080 --name jenkins  -v $(pwd)/jobs:/var/jenkins_home/jobs fabric8/jenkins

# remove all containers
docker rm $(docker ps -a -q)
