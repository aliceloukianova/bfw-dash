FROM ubuntu:18.10
LABEL maintainer="Dylan Dasgupta <dylandasgupta@gmail.com>"

RUN apt-get update
RUN apt-get install -y python3 python3-dev python3-pip

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

COPY ./ /app
WORKDIR /app

EXPOSE 80
CMD flask run --host=0.0.0.0
