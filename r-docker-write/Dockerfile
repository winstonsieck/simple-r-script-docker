# Base image https://hub.docker.com/r/rocker/r-base
FROM rocker/r-base

# Make directories in the container
RUN mkdir /home/r-env
RUN mkdir /home/r-env/output

# Copy R script to the container
COPY write_csv.R /home/r-env/write_csv.R

# Run the script
CMD ["R", "-e", "source('/home/r-env/write_csv.R')"]

# to execute:
    # docker build -t r-docker-write .
    # 1-data lost with container: 
    #   docker run r-docker-write
    # 2-data saved in my-r-data
    #   docker run -v /root/my-r-data:/home/r-env/output r-docker-write