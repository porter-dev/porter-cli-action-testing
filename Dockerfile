FROM ghcr.io/porter-dev/porter/porter-cli:v0.52.47

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
