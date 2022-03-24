# base image
ARG ARCH=amd64
FROM $ARCH/debian:buster-slim

# install packages
RUN apt-get update \
  && apt-get install -y \
  sudo \
  usbutils \
  whois \
  cups \
  cups-client \
  cups-bsd \
  cups-filters \
  foomatic-db-compressed-ppds \
  printer-driver-all \
  openprinting-ppds \
  hpijs-ppds \
  hp-ppd \
  hplip \
  smbclient \
  printer-driver-brlaser \
  printer-driver-cups-pdf \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Add user and disable sudo password check
RUN useradd \
  --groups=sudo,lp,lpadmin \
  --create-home \
  --home-dir=/home/print \
  --shell=/bin/bash \
  --password=$(mkpasswd print) \
  print \
&& sed -i '/%sudo[[:space:]]/ s/ALL[[:space:]]*$/NOPASSWD:ALL/' /etc/sudoers

# Copy the default configuration file
COPY --chown=root:lp cupsd.conf /etc/cups/cupsd.conf

# Default shell
CMD ["/usr/sbin/cupsd", "-f"]
