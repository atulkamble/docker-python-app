FROM python:3.12.4
WORKDIR /usr/app/src
COPY sum.py ./
CMD [ "python", "./sum.py"]
