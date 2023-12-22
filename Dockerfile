FROM ubuntu:22.04
RUN apt-get -y update && apt-get install -y python3
COPY . /app


RUN --mount=type=secret,id=secret_stuffs \
  cat /run/secrets/secret_stuffs > /app/.Renviron


# Build the string for a file

# write out the .Renviron to the image






ENV TEST_ENV_VAR=$TEST_VAR

CMD python3 /app/app.py