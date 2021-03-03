[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![GNU GPL v3 License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]  

# ValheimServer
Dedicated Valheim Server inside a Docker Container

Version 0.1 is working. 

## Build the Dockerfile manually
```bash  
docker build -t valheimserver-01 .     
``` 

## Run Docker Container
```bash  
docker run -it -p 2456-2458:2456-2458/udp valheimserver-01 bash
./start_server.sh
``` 
missing automatic startup at the moment
missing port mapping etc, will be added 


# Default Settings

-name "My server" 
-port 2456 
-world "Dedicated" 
-password "secret"

## NOTE: You need to make sure the ports 2456-2458 is being forwarded to your server through your local router & firewall.all.


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/CyberT3C/ValheimServer.svg?style=for-the-badge
[contributors-url]: https://github.com/CyberT3C/ValheimServer/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/CyberT3C/ValheimServer.svg?style=for-the-badge
[forks-url]: https://github.com/CyberT3C/ValheimServer/network/members
[stars-shield]: https://img.shields.io/github/stars/CyberT3C/ValheimServer.svg?style=for-the-badge
[stars-url]: https://github.com//CyberT3C/ValheimServer/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo/issues
[license-shield]: https://img.shields.io/github/license/CyberT3C/ValheimServer.svg?style=for-the-badge
[license-url]: https://github.com/CyberT3C/ValheimServer/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555