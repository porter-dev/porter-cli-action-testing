FROM ghcr.io/porter-dev/porter/porter-cli:v0.51.17

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
