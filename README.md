# learnDocker

1. create and start a container from an image
 + `docker run -p 5000:8080 (port mapping) <image-name> <?start up commad?>`
  - `docker create <image-name> (outputs container-id)`
  - `docker start -a <container-id> (-a - attach out/err streams)`

2. show currently running containers
`docker ps`
3. list all containers (up and exited)
`docker ps —all`
4. clean up all currently instaintiated containers on a machine
`docker system prune`
5. view logs of a container
`docker logs <container-id>`
6. shut down with clean up (gracefull shutdown)
`docker stop <container-id>`
7. force shut down container
`docker kill <container-id> (shut down immediately))`
8. execute a command in a running container
`docker exec -i (attach STDIN)  -t (pretty formatting) <container-id> <another command>`
`docker exec -it <container-id> sh (open container’s command prompt) (ctrl + d to exit)`

9. create a new image from Dockerfile
`docker build -t alexkolomiytsev/projectName:latest <path/to/files and folders we want to encapsulate in a container>`

!!(do not use it, use Dockerfile instead)!!
`docker commit -c <default command> (e.g. 'CMD ["redis-server"]') <container-id>`
