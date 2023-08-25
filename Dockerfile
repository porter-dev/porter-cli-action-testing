FROM ghcr.io/porter-dev/porter/porter-cli:v0.50.4

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
