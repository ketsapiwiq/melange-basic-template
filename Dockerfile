FROM debian:bullseye
RUN apt-get update && apt-get install -y npm curl libdigest-sha-perl
RUN npm install -g esy
COPY ./ /root
WORKDIR /root
RUN esy
RUN esy build
