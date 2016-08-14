FROM python:latest

MAINTAINER kevin.marilleau@gmail.com 

EXPOSE 8000 

RUN pip install --no-cache-dir djangocms-installer

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ADD https://rawgit.com/daimebag/django-cms-docker/test/run.sh /usr/src

CMD sh /usr/src/run.sh
