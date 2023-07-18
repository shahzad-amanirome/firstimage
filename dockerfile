FROM alpine:latest
LABEL maintainer="email2shahzadahmad@gmail.com"
COPY ./index.html .
WORKDIR /apps 
ADD . /app
RUN apt update && apt install python -y
CMD python /app/main.py
