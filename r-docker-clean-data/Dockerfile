# Base image https://hub.docker.com/r/rocker/r-base
FROM rocker/r-base

# Make directory in the container
RUN mkdir /home/r-env
RUN mkdir /home/r-env/input
RUN mkdir /home/r-env/output

# Install R dependencies
RUN ["R", "-e", "install.packages('rjson')"]

# Copy R script and data to the container
COPY make_clean_df.R /home/r-env/make_clean_df.R
COPY input/messy_data.json /home/r-env/input/messy_data.json

# Run the script using JSON format
CMD ["R", "-e", "source('/home/r-env/make_clean_df.R')"]

# to execute:
    # docker-compose up