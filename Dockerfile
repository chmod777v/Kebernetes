FROM golang:alpine

WORKDIR /app

COPY . .
RUN go mod download

RUN go build -o main ./cmd/main.go
RUN chmod +x main
EXPOSE 8080
CMD ["./main"]
