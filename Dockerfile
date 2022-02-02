# syntax=docker/dockerfile:1
FROM golang:1.17.6
WORKDIR /go/bin
COPY ./app ./
RUN go install .

FROM ubuntu:latest  
WORKDIR /root/
COPY --from=0 /go/bin ./
CMD ["./challenge"]
