# bassmeets/rpi-docker-cups

This debian based docker image runs CUPS printer server and was specifically build with Brother printer drivers added.

* https://github.com/pdewacht/brlaser

# Run
`docker run -d --restart always -p 631:631 -v $(pwd):/etc/cups bassmeets/rpi-docker-cups:main`

## access
* Port exposed and accessable in browser `631`
* Username: `admin` password: `admin`