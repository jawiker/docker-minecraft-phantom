# docker-minecraft-phantom
Runs jhead/phantom in a docker container for x86 or arm. 

This image runs jhead/phantom (https://github.com/jhead/phantom) in a docker container for x86 or arm.
 
```
    sudo docker run -it -d --name=minecraft-phantom\
    --net=host\
    --restart=always\
    -e SERVER=[Server_IP Address]:[Server_Port]\
    -e TYPE=linux-arm8\
    -e VERSION=0.5.3\
    ablauvelt93/minecraft-phantom

```
