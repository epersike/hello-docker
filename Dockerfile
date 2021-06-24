# syntax=docker/dockerfile:1

from python:3.7

WORKDIR /app

COPY requirements.txt requirements.txt

RUN python3 -m pip install -r requirements.txt

RUN rm requirements.txt

#COPY ./src/ ./

CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0" ]
