FROM ubuntu

RUN apt-get-update -y python
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-flask

COPY . /opt/app

ENTRYPOINT FLASK_APP=/opt/app/application.py flask run