#from where we are copying image
FROM python:3.7-alpine
# the maintainer
MAINTAINER SHUBHAM SHARMA

ENV PYTHONUNBUFFERED 1 #AVOID PYTHON TO BUFFER OUTPUT, IT JUST PRINT DIRECTLY

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# create user which is going to run docker

RUN adduser -D user # -D means only used for runing
USER user
# if above not used then application will run by root and hence will be problem as he can do other things as well

