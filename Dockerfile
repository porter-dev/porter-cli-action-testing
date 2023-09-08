FROM ghcr.io/porter-dev/porter/porter-cli:v0.51.5

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
