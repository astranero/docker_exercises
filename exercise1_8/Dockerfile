FROM ubuntu:20.04

WORKDIR /mydir 

RUN apt-get update && apt-get install curl  -y


COPY script.txt .
RUN chmod +x script.txt
ENTRYPOINT ["./script.txt"]
