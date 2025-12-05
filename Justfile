default:
    @just -l

build:
    docker build -t static-server .

run:
    docker run -p 8080:80 -v ./sites:/sites static-server