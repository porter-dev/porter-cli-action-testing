FROM ghcr.io/porter-dev/porter/porter-cli:v0.52.15-upcoming

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
