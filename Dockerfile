FROM ubuntu:22.04
RUN apt-get -y update && apt-get install -y python
COPY . /app
#RUN make /app
CMD python /app/app.py