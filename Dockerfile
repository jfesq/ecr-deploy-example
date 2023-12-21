FROM ubuntu:22.04
RUN apt-get -y update && apt-get install -y python3
COPY . /app
#RUN make /app
CMD python3 /app/app.py