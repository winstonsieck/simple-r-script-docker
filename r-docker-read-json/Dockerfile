# Base image https://hub.docker.com/r/rocker/r-base
FROM rocker/r-base

# Make directory in the container
RUN mkdir /home/r-env
RUN mkdir /home/r-env/input

# Install R dependencies
#RUN R -e "install.packages('rjson')"
RUN ["R", "-e", "install.packages('rjson')"]

# Copy R script and data to the container
COPY read_json.R /home/r-env/read_json.R
COPY input/messy_data.json /home/r-env/input/messy_data.json

# Run the script using JSON format
CMD ["R", "-e", "source('/home/r-env/read_json.R')"]

# to execute:
    # docker build -t r-docker-read-json .
    # docker run r-docker-read-json