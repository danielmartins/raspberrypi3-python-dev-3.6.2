FROM resin/raspberrypi3-python:3.6.2
MAINTAINER Daniel Santos <daniel.santos@fpf.br>

RUN [ "cross-build-start" ]

RUN apt-get update
RUN apt-get install build-essential git devscripts equivs python python-virtualenv python3 python3-venv python3-dev -y

RUN [ "cross-build-end" ]
