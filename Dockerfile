FROM ubuntu:24.04

WORKDIR /app
COPY script.sh .
RUN apt-get update -y && apt-get install curl -y
RUN chmod +x script.sh

CMD ["/app/script.sh"]
