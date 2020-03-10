FROM python:3.8-alpine

ENV PATH="$PATH:/root/.local/bin"

RUN apk add --no-cache --virtual .build-deps \
        gcc make musl-dev openssl-dev libffi-dev \
    && pip3 install awsebcli --upgrade --user \
    && apk del .build-deps \
    && rm -rf /root/.cache

CMD [ "eb" ]
