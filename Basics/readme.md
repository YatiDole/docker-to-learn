# Points to remember

* Always remember even a single process requires creating a whole network attached virtual machine.
* Virtual machines provide virtual hardware (or hardware on which an operating system and other programs can be installed)
* Docker donot use any hardware virtualization.
* Programs running inside Docker containers interface directly with the host’s Linux kernel
* Working with containers instead of software creates a consistent interface and enables the development of more sophisticated tool.

# What happens when we run docker run
* when we give a command docker run, docker lookPrograms running inside Docker containers interface directlywith the host’s Linux kernels for the image in the local computer.
* if it is not installed ,Docker searches DockerHub for the image.
* If available on docker hub Docker downloads the image and the image layers are installed on the computer.
* Then Docker creates a new container and starts the program.


# Running Softwares in container for Isolation(Computer stack running 2 machines)

* User Space consist of commandline,the text editor the hello world program in python
* Then it interacts with the operating system then information goes to CPU and Memory out to network and display to the screen.


# Running Softwares in container for Isolation(Docker running 3 containers on a basic Linux System)

* User Space consist of commandline,will talk to Docker CLI which will communicate with the docker Daemon to run the 3 containers such as webserver container,hello-world and database container totally isolated from one another.
* Container talks directly to the Operating System

# Docker Images

* Docker image is basically a bundled snapshot of all the files that should be available to a program running inside a container.
* We can create multiple instances of the from a single image.
* Images are shippable units.

## The problems docker solves:

* Isolating dependencies and software versions.
* Improves portability and software versions.
* Process Isolation
* Docker provides and abstraction and way to reusable code.
