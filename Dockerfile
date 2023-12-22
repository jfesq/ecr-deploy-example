# start with the official R project base image
FROM r-base:latest

# Install the C/C++ libraries needed to run the script
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libssl-dev \
    libcurl4-openssl-dev \
    libxml2-dev

# Install the R libraries needed to run the scripts
COPY install_libraries.R /tmp/
RUN Rscript /tmp/install_libraries.R

# copy this github repo into the Docker image and set as the working directory
COPY . /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts

RUN --mount=type=secret,id=secret_stuffs \
  cp /run/secrets/secret_stuffs /usr/local/src/myscripts/.Renviron


# Execute the target script
CMD ["Rscript", "etl-animal-data-csv.R"]