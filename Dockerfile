FROM ruby:2.3.1

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    postgresql-client \
    nodejs \
  && apt-get -q clean \
  && rm -rf /var/lib/apt/list

RUN gem install nokogiri -v "1.6.8.1"
WORKDIR /usr/src/app
COPY GemFile* ./
COPY

CMD rails server -b 0.0.0.0
