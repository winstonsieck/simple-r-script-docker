# Base image https://hub.docker.com/r/rocker/r-base
FROM rocker/r-base

# Make directory in the container
RUN mkdir /home/r-env

# Copy R script to the container
COPY hello.R /home/r-env/hello.R

# Run the script
CMD R -e "source('/home/r-env/hello.R')"


# to execute:
    # docker build -t r-docker-hello .
    # docker run -d r-docker-hello