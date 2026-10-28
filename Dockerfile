ARG VERSION=v0.12.3

FROM ghcr.io/open-webui/open-webui:${VERSION}

LABEL maintainer="VergissBerlin"
LABEL description="Open WebUI Template for Railway"

# Railway ignores EXPOSE and routes traffic to the port named by $PORT.
# EXPOSE documents the local default, ENV PORT keeps that default reproducible.
ENV PORT=8080
EXPOSE 8080
