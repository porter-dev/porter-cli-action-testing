FROM ghcr.io/porter-dev/porter/porter-cli:v0.50.6

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
