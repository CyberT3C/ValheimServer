# ValheimServer
Dedicated Valheim Server inside a Docker Container

## Build the Dockerfile manually
```bash  
docker build -t valheimserver-01 .     
``` 

## Run Docker Container
```bash  
docker run -it valheimserver-01
start_server.sh
``` 
missing automatic startup at the moment
missing port mapping etc, will be added 


# Default Settings

-name "My server" 
-port 2456 
-world "Dedicated" 
-password "secret"

## NOTE: You need to make sure the ports 2456-2458 is being forwarded to your server through your local router & firewall.all.
