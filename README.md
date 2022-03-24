# bassmeets/rpi-docker-cups

This debian based docker image runs CUPS printer server and was specifically build with Brother printer drivers added.

* https://github.com/pdewacht/brlaser

# Use
`docker run -d --restart always -p 631:631 -v $(pwd):/etc/cups bassmeets/rpi-docker-cups:main`
`

## port
`631` Port exposed and accessable in browser