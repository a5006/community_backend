FROM golang:alpine as Builder
ENV VERSION=1.2.0
WORKDIR /home/golang  
COPY . .
RUN mkdir dist&& go build -o ./dist/app
WORKDIR /
COPY --from=Builder /home/golang/dist /dist
ADD ./etc/apk/repositories /etc/apk/repositories
RUN apk update && apk add curl
EXPOSE 2333
ENTRYPOINT ["/dist/app"]