# Docker commands

`docker run <image>` : download an image and create a container based on the image.

`docker run <image>:<tag>` : specify the version of the image using the <tag>.

`docker run -d <image>` : run in background.

`docker run -it <image>` : run the container in interactive mode (i) using a pseudo terminal (t).

`docker run --name <name> <image> <cmd>` : deploy a container named <name> that runs <cmd>.

`docker exec <container> <cmd>` : ask the <container> to run the <cmd>.

`docker ps -a` : list all containers (running and stopped).

`docker stop <container>` : stops a running container.

`docker images` : list all downloaded images.

`docker rm <container>` : delete a container.

`docker rmi <image>` : delete an image (no container should be using the image).

`docker pull <image>` : download a image without creating a container.

`docker run -p <hp>:<cp> <image>` : maps the host port's <hp> to the container's port <cp>.

`docker run -v <hp>:<cp> <image>` : maps the host file directory <hf> to the container's file directory <cf>. The data is persist even when the container is down.

`docker logs <container>` : prints the stdout of the container.

`docker inspect <container> --format "{{ .Config.Env }}"`: checks for any environment variable defined on the container.
