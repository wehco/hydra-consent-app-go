FROM debian:jessie-slim
RUN apt-get update
RUN apt-get install -yqqqq ca-certificates
ADD consent /
ADD ./templates /templates
CMD ["/consent"]
