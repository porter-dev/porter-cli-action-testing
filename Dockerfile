FROM ghcr.io/porter-dev/porter/porter-cli:v0.52.23-dev-gha-cache

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
