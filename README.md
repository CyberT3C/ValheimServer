[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![GNU GPL v3 License][license-shield]][license-url]

# ValheimServer
insert Logo Big

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Valheim Server][product-screenshot]](https:missinglink) Missing

Dedicated Valheim Server inside a Docker Container

Version 0.1 is working. 


### Built With
Will be added in the future
* [Docker](https://docs.docker.com/)
* [Debian Image](https://hub.docker.com/_/debian)
* [SteamCMD Image](https://hub.docker.com/r/cm2network/steamcmd)



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

You need to install docker on your device. Examples below:
* Docker on Linux
  ```sh
  ... install
  ```
* Docker on Windows
  ```sh
  ... install
  ```

_For more information, please refer to the [Get Docker](https://docs.docker.com/get-docker/)  [Geting started](https://docs.docker.com/get-started/)_  
### Installation

1. Clone the ValheimServer
   ```sh
   git clone https://github.com/CyberT3C/ValheimServer_name.git
   ```
2. Build docker image locally
   ```sh
   docker build -t valheimserver-01 .
   ```
2. start docker container locally
   ```sh
   docker run -it -p 2456-2458:2456-2458/udp valheimserver-01 bash
   ./start_server.sh
   ```




<!-- USAGE EXAMPLES -->
## Usage

Examples and Screenshots will be added in the future


<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/CyberT3C/ValheimServer/issues) for a list of proposed features (and known issues).



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