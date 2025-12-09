default:
    @just -l

build:
    docker build -t static-server .

run:
    docker run -p 8080:80 -v ./sites:/sites static-server

tag version:
    docker tag static-server ghcr.io/javif89/static-server:{{version}}

push version:
    just tag {{version}}
    just tag latest
    docker push ghcr.io/javif89/static-server:{{version}}
    docker push ghcr.io/javif89/static-server:latest