# Static Server

Simple caddy docker image where it will take the host of the request
and serve the static site at `/sites/{host}`.

Just mount the directory where you'll keep your static sites to
`/sites` in the container.