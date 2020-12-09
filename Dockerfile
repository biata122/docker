FROM alpine:3.9
LABEL maintainer="biata1994@gmail.com"
RUN apk add --update python3
COPY . /src
WORKDIR /src
#running dependencies
RUN pip3 install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3","./app.py"]