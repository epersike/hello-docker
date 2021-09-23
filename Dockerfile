FROM tiangolo/uwsgi-nginx-flask:python3.8

WORKDIR /app

COPY ./src /app

COPY ./requirements.txt ./

#RUN apt update && apt -y install cmake

RUN python3 -m pip install --no-cache-dir -r requirements.txt

RUN rm requirements.txt