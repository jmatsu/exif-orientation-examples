FROM ruby:2.6.6

RUN mkdir /workdir

WORKDIR /workdir

RUN apt-get update -qq && apt-get install -y \
  ghostscript \
  libgs-dev \
  imagemagick \
  exiftool

CMD [ "make", "all" ]