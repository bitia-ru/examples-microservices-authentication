FROM ruby:2.5.3-alpine3.8 AS base

# install packages needed for Rails
#RUN apk add -U gmp-dev zlib libressl tzdata

WORKDIR /app

#RUN apk add -U gcc g++ make zlib-dev libressl-dev

COPY app.rb ./

CMD ["ruby", "app.rb"]
