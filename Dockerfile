FROM ubuntu:22.04
RUN apt-get -y update && apt-get install -y python3
COPY . /app
#RUN make /app
RUN --mount=type=secret,id=github_token \
  cat /run/secrets/github_token
CMD python3 /app/app.py