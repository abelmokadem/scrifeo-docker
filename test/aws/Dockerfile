FROM ubuntu

RUN apt-get update
RUN apt-get install -y python-pip

RUN pip install awscli

WORKDIR /usr/src/app

COPY . .

ENTRYPOINT []
CMD ["scripts/setup.sh"]
