FROM python:3.11

WORKDIR /usr/src

ARG REQ_TXT
COPY ${REQ_TXT} .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r ${REQ_TXT}

CMD ["/bin/bash"]
