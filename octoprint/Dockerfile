#ARG BUILD_FROM
#FROM ${BUILD_FROM}
ARG BUILD_FROM=homeassistant/armv7-base-debian:buster
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

WORKDIR /data

# Install requirements for add-on
RUN apt update && apt install -y \
	python3-pip \
	python3-venv \
	git \
	libyaml-dev \
	build-essential \
    \
    && adduser --gecos "" --disabled-password --home /home/octoprint octoprint \
    && usermod -a -G octoprint octoprint \
    && usermod -a -G tty octoprint \
    && usermod -a -G dialout octoprint \
    && mkdir /home/octoprint/OctoPrint && cd /home/octoprint/OctoPrint \
    && python3 -m venv venv \
    && source venv/bin/activate \
    && pip install pip --upgrade \
    && pip install --no-cache-dir octoprint \
    && chmod -R 755 /home/octoprint/OctoPrint \
    && chown -R octoprint:octoprint /home/octoprint/OctoPrint

COPY run.sh /home/octoprint
COPY startOctoPrint.sh /home/octoprint

RUN chmod a+x /home/octoprint/run.sh
RUN chmod a+x /home/octoprint/startOctoPrint.sh

CMD ["/home/octoprint/run.sh" ]

# Labels
LABEL \
    io.hass.name="OctoPrint" \
    io.hass.description="Control your 3D Printer over Network" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Stefan Unruh <dsgamingdev@gmail.com>" \
    org.opencontainers.image.title="OctoPrint" \
    org.opencontainers.image.description="Control your 3D Printer over Network" \
    org.opencontainers.image.vendor="Home Assistant Community Add-ons" \
    org.opencontainers.image.authors="Stefan Unruh <dsggamingdev@gmail.com>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://github.com/GitHubStefan13/hassio-addons-addon-octoprint" \
    org.opencontainers.image.documentation="https://github.com/GitHubStefan13/hassio-addons-addon-octoprint/blob/master/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
