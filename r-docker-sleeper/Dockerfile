## Show command and entrypoint
## default mimics cmd line: docker run rocker/r-base sleep 10
## code:
    FROM rocker/r-base
    ENTRYPOINT ["sleep"]
    CMD ["10"]
## to execute:
    # docker build -t r-sleeper .
    # docker run -d r-sleeper 15