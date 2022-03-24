# bassmeets/rpi-docker-cups

This debian based docker image runs CUPS printer server and was specifically build with Brother printer drivers added.

* https://github.com/pdewacht/brlaser

# Run
`docker run -d -p 631:631 -v /var/run/dbus:/var/run/dbus --name cups 89a34f2f310c`

## access
* Port exposed and accessable in browser `631`
* Username: `print` password: `print`