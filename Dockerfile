FROM ubuntu:22.04
RUN apt-get -y update && apt-get install -y python3
COPY . /app
#RUN make /app
RUN --mount=type=secret,id=secret_stuffs \
  cat /run/secrets/secret_stuffs > /run/secrets/secret_stuffs.txt
ENV TEST_ENV_VAR=$TEST_VAR
CMD python3 /app/app.py