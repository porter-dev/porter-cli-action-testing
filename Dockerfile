FROM ghcr.io/porter-dev/porter/porter-cli:v0.52.13-upcoming2

RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-24.0.6.tgz && tar --strip-components=1 -xvzf docker-24.0.6.tgz -C /usr/local/bin

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
