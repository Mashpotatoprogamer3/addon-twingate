ARG BUILD_FROM=ghcr.io/hassio-addons/base:13.2.0
FROM ${BUILD_FROM}

# Install dependencies
RUN apk add --no-cache curl

# Install Twingate CLI
RUN curl -fsSL https://binaries.twingate.com/client/linux/install.sh | sh

# Copy add-on scripts
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
