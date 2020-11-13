ARG BUILD_FROM=homeassistant/base:7.0.0
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ENV OCTOPRINT_TAG="0.17.0"

# Install requirements for add-on
RUN apk add --no-cache   \                                                                                                      
        git=2.24.1-r0    \
    \
    && addgroup -S octopi \
    && adduser -S -s /bin/bash -h /home/octopi octopi octopi \
    && git clone --branch "${GITOLITE_TAG}" --depth=1 \ 
	https://github.com/guysoft/OctoPi.git /home/octopi/octopi \


# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="OctoPi" \
    io.hass.description="OctoPi allows you to host a Server, accessing your 3D Printer over Network" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Stefan Unruh <dsgamingdevs@gmail.com>" \
    org.label-schema.description="OctoPi allows you to host a Server, accessing your 3D Printer over Network" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="Gitolite" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/GitHubStefan13/hassio-addons-addon-octoprint" \
    org.label-schema.vendor="Community Hass.io Addons"
