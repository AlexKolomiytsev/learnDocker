# learnDocker

- create and start a container from an image
 + docker run <image-name> <?start up commad?>
  - docker create <image-name> (outputs container-id)
  - docker start -a <container-id> (-a - attach out/err streams)

 - show currently running containers
docker ps
 - list all containers (up and exited)
docker ps —all

 - clean up all currently instaintiated containers on a machine
docker system prune

 - view logs of a container
docker logs <container-id>

 - shut down with clean up (gracefull shutdown)
docker stop <container-id>

 - force shut down container
docker kill <container-id> (shut down immediately))

 - execute a command in a running container
docker exec -i (attach STDIN)  -t (pretty formatting) <container-id> <another command>
docker exec -it <container-id> sh (open container’s command prompt) (ctrl + d to exit)

 - create a new image from Dockerfile
docker build -t alexkolomiytsev/projectName:latest <path/to/files and folders we want to encapsulate in a container>

!!(do not use it, use Dockerfile instead)!!
docker commit -c <default command> (e.g. 'CMD ["redis-server"]') <container-id>
