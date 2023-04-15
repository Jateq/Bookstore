FROM golang:latest

RUN go version
ENV GOPATH=/

COPY . .

RUN apt-get update
RUN apt-get -y install postgresql-client


RUN go mod download
RUN go build -o bookstore ./main.go

CMD ["./bookstore"]