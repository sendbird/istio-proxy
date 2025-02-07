FROM istio/proxyv2:1.22.1 AS base

ARG SIDECAR=envoy
ARG TARGETARCH
COPY ${TARGETARCH}/${SIDECAR} /usr/local/bin/
RUN chmod +x /usr/local/bin/envoy

ENTRYPOINT ["/usr/local/bin/pilot-agent"]