<div id="top"></div>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://docker.com">
    <img src="images/docker.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Mini Linux</h3>

  <p align="center">
    Run your project on linux from macOS.
    Useful for valgrind, clang++, etc...
    <br />
    <a href="https://github.com/Ovoda/mini_linux_env/issues">Report Bug</a>
    ·
    <a href="https://github.com/Ovoda/mini_linux_env/issues">Request Feature</a>
  </p>
</div>




<!-- ABOUT THE PROJECT -->
## About The Project

This project is a docker container running Ubuntu meant to ease the access to linux tools for macOS developers.
With this tool you can build your project and run it in linux.

Make sure your makefile compiles both mac an linux.

Here's why I created this tool and why I use it:
* No need for a heavy Virtual Machine, linux runs in a light weight Docker container.
* Ease of access and ease of use : just run a shell script and your project is running on linux.
* Access to "linux only" tools like valgrind
* Good way to make sure the project also compiles on linux.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [Docker](https://docker.com/)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

Here is how to use this tool.

### Prerequisites

First make sure you have
* docker and docker-compose
* a Makefile rule for linux compilation (for project requiring compilation)
  ```Makefile
  # something like this
  UNAME_S := $(shell uname -s)
  ifeq ($(UNAME_S),Linux)
	  # Linux compilation logic
  endif
  ifeq ($(UNAME_S),Darwin)
	  # MacOS compilation logic
  endif
  ```

### Installation

1. Clone the repo inside your project
   ```
   ./your_project
   | - mini_linux_env
   ```
2. Run the shell script
   ```sh
   ./run_container.sh
   ```

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Ovoda - calide-n@student.42.fr

Project Link: [https://github.com/Ovoda/mini_linux_env](https://github.com/Ovoda/mini_linux_env)

<p align="right">(<a href="#top">back to top</a>)</p>