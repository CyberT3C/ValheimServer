[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![GNU GPL v3 License][license-shield]][license-url]

# ValheimServer
Todo: make a Logo

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>

  - [ValheimServer](#valheimserver)
  - [About The Project](#about-the-project)
  - [Version 0.2 is out now.](#version-02-is-out-now)
    - [Built With](#built-with)
    - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
  - [Installation](#installation)
    - [Adavanced with parameters](#adavanced-with-parameters)
    - [Test Locally](#test-locally)
  - [Usage](#usage)
  - [Roadmap](#roadmap)
- [ValheimServer](#valheimserver)
  - [About The Project](#about-the-project)
  - [Version 0.21 is out now](#version-021-is-out-now)
    - [Built With](#built-with)
    - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
  - [Installation](#installation)
    - [Adavanced with parameters](#adavanced-with-parameters)
    - [Test Locally](#test-locally)
  - [Usage](#usage)
  - [Roadmap](#roadmap)
- [Help with Docker and Troubleshooting](#help-with-docker-and-troubleshooting)
  - [Troubleshooting](#troubleshooting)
  - [Docker on Windows](#docker-on-windows)
    - [How to access/show volume data](#how-to-accessshow-volume-data)
    - [Example](#example)
    - [Get Mountpoint](#get-mountpoint)
    - [Show data](#show-data)
  - [Contributing](#contributing)
  - [License](#license)
  - [Contact](#contact)
  
</details>


<!-- ABOUT THE PROJECT -->
## About The Project

Dedicated Valheim Server inside a Docker Container

Project Goal "Make a clean valheim server base image"



| **Principles** |   
|-----------------------------------|
|  **KISS** *Keep it simple, stupid* |  
|  **Test First** |  

    My goal is to make a docker image which everyone can run.  
    Even someone without any network and docker knowledge should be able to runs this.
    The Image should als be well tested and just run always (this is a little bit in conflict with the unkown valheim server code)  

## Version 0.21 is out now  

<font color="green">

+ Added Parameter passing  
+ Added Data peristence (Wolrd Data and Player Location)   
  
</font> 

<font color="red">Note: Changing the port will not work at the moment</font>

### Built With
Will be added in the future
* [Docker](https://docs.docker.com/)
* [Debian Image](https://hub.docker.com/_/debian)
* [SteamCMD Image](https://hub.docker.com/r/cm2network/steamcmd)



<!-- GETTING STARTED -->
### Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

You need to install docker on your device. Examples below:
_For more information, please refer to the    
[Get Docker](https://docs.docker.com/get-docker/)    
[Geting started](https://docs.docker.com/get-started/)_  

## Installation
1. Pull docker image 
   ```docker
   docker pull cyb3r/valheim-server
   ```
2. Run the docker container
   ```docker
   docker run --name my-custom-valheim-server -d -p 2456-2458:2456-2458/udp cyb3r/valheim-server
   ```

### Adavanced with parameters  
  ```docker
  docker run --name my-custom-valheim-server -d -p 2456-2458:2456-2458/udp cyb3r/valheim-server -name "A real Name" -port "2456" -world "Dockerhein" -password "docker"
  ```


  
### Test Locally
1. Clone the ValheimServer
   ```git
   git clone https://github.com/CyberT3C/ValheimServer.git
   ```
2. Build docker image locally
   ```docker
   docker build --no-cache -t valheimserver-01 .
   ```
2. start docker container locally in interactive mode
   ```docker
   docker run -it -p 2456-2458:2456-2458/udp valheimserver-01 
   ```




<!-- USAGE EXAMPLES -->
## Usage

Examples and Screenshots will be added in the future  


<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/CyberT3C/ValheimServer/issues) for a list of proposed features (and known issues).  


# Help with Docker and Troubleshooting
## Troubleshooting  
  ```docker
  #this will not start the server, so u can search for files or data and check if everything is fine
  docker run -it -p 2456-2458:2456-2458/udp cyb3r/valheim-server bash

  # start with full command output
  docker run -it -p 2456-2458:2456-2458/udp cyb3r/valheim-server -name "A real Name" -port "2456" -world "Dockerhein" -password "docker"
  ```
You can stop the container by using `ctrl + c`.  


## Docker on Windows
### How to access/show volume data

<font color="red">run a shell (e.g. powershell, mingw) as adminstrator</font>   
```docker
docker run --rm -it -v /:/vm-root alpine:edge ls -l /vm-root/yourpath
```

### Example
### Get Mountpoint
```docker
docker volume ls
docker volume inspect b73773dc39e689cc5be0f538f3f59aa04dcc6f4eb5fcdadf70e6d632b48ee6c8
```
```json
{
        "CreatedAt": "2021-03-04T13:45:14Z",
        "Driver": "local",
        "Labels": null,
        "Mountpoint": "/var/lib/docker/volumes/b73773dc39e689cc5be0f538f3f59aa04dcc6f4eb5fcdadf70e6d632b48ee6c8/_data",
        "Name": "b73773dc39e689cc5be0f538f3f59aa04dcc6f4eb5fcdadf70e6d632b48ee6c8",
        "Options": null,
        "Scope": "local"
    }
```
### Show data 
```docker
docker run --rm -it -v /:/vm-root alpine:edge ls -l /vm-root/var/lib/docker/volumes/b73773dc39e689cc5be0f538f3f59aa04dcc6f4eb5fcdadf70e6d632b48ee6c8/_data/
```

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the GNU General Public License v3 License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Niklas - [@omnificutie](https://twitter.com/omnificutie) 

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/CyberT3C/ValheimServer.svg?style=for-the-badge
[contributors-url]: https://github.com/CyberT3C/ValheimServer/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/CyberT3C/ValheimServer.svg?style=for-the-badge
[forks-url]: https://github.com/CyberT3C/ValheimServer/network/members
[stars-shield]: https://img.shields.io/github/stars/CyberT3C/ValheimServer.svg?style=for-the-badge
[stars-url]: https://github.com//CyberT3C/ValheimServer/stargazers
[issues-shield]: https://img.shields.io/github/issues/CyberT3C/ValheimServer.svg?style=for-the-badge
[issues-url]: https://github.com/CyberT3C/ValheimServer/issues
[license-shield]: https://img.shields.io/github/license/CyberT3C/ValheimServer.svg?style=for-the-badge
[license-url]: https://github.com/CyberT3C/ValheimServer/blob/main/LICENSE
