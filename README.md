# Simple R Scripts for Docker

Build and run docker images with these simple example R scripts

Each folder includes a very basic example package that builds off of the [rocker/r-base image](https://hub.docker.com/r/rocker/r-base) on docker hub. To get started:

-   log into a docker supported server with admin access (see below for one setup)

-   upload the folder with desired example to root dir

-   cd into the folder

-   build and run as described in the folder's Dockerfile

As mentioned on the r-base hub page, you can run R interactively with:

`docker run --rm -it rocker/r-base`

The examples here are to get started running R scripts inside containers, programmatically:

1)  r-docker-sleeper: This silly example runs an r-base container in the background and puts it to sleep for specified number of seconds. If quick enough, you can use "docker ps" to see that it is running. The Dockerfile illustrates FROM, ENTRYPOINT, and CMD.

2)  r-docker-hello: Fires up R and returns "hello world." Shows how to make a directory, copy an R script into a container, and run the script - with json format used for the command.

3)  r-docker-read-json: Reads a json file into R and converts to data frame for further analysis (here just informing user that it worked). Dockerfile installs an R package, and copies script and input data files into the container.

4)  r-docker-write: Generates some random data and saves out as a csv. Base Docker behavior is that container data is lost when container is done. The Dockerfile here gives a run command to save data in external directory.

5)  r-docker-clean: Reads in a messy json file, cleans and converts to data frame, then saves as a csv in an external directory. Includes a compose.yaml file to simplify the build/run command.

If needed, you can get a VM with Docker up and running pretty easily with this [Digital Ocean setup](https://marketplace.digitalocean.com/apps/docker "Docker Droplet"). Posit recommends 2 cores and 4G memory for testing/sandboxing. The [guidance](https://support.posit.co/hc/en-us/articles/115002344588-Configuration-and-sizing-recommendations) is for Posit products, but requirement "depends mostly on R."
