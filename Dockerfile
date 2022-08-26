FROM python:3.8-buster

COPY ./ /sepca
WORKDIR /sepca

RUN python -m pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    python setup.py install

ENTRYPOINT ["sepca"]
