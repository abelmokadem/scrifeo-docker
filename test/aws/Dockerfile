FROM ubuntu

RUN pip install awscli

ENV AWS_ACCESS_KEY_ID=test
ENV AWS_SECRET_ACCESS_KEY=test

WORKDIR /usr/src/app

COPY . .

ENTRYPOINT []
CMD ["fixtures/scripts/setup.sh"]
