FROM resin/rpi-raspbian:stretch
MAINTAINER Daniel Santos <daniel.santos@fpf.br>

RUN [ "cross-build-start" ]

RUN apt-get update && apt-get install -y \
		dh-virtualenv \ 
		autoconf \
		python3-venv \
		python3 \
		python3-setuptools \
		python3-setuptools-git \
		python3-dev \
		build-essential \
		ca-certificates \
		curl \
		imagemagick \
		libbz2-dev \
		libcurl4-openssl-dev \
		libevent-dev \
		libffi-dev \
		libglib2.0-dev \
		libjpeg-dev \
		libmagickcore-dev \
		libmagickwand-dev \
		libncurses-dev \
		libpq-dev \
		libreadline-dev \
		libsqlite3-dev \
		libssl-dev \
		libxml2-dev \
		libxslt-dev \
		libyaml-dev \
		zlib1g-dev \
		git \
		devscripts \
		equivs \
		wget \
		openssh-client \
	&& rm -rf /var/lib/apt/lists/*

RUN [ "cross-build-end" ]
