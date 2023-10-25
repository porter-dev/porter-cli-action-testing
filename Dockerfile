FROM ghcr.io/porter-dev/porter/porter-cli:v0.52.13-upcoming2

RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-24.0.6.tgz && \
    tar --strip-components=1 -xvzf docker-24.0.6.tgz -C /usr/local/bin && \
    mkdir -p /usr/local/libexec/docker/cli-plugins && \
    curl -fsSLo /usr/local/libexec/docker/cli-plugins/docker-buildx https://github.com/docker/buildx/releases/download/v0.11.2/buildx-v0.11.2.linux-amd64 && \
    chmod +x /usr/local/libexec/docker/cli-plugins/docker-buildx

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
