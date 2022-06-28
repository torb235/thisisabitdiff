#!/bin/bash
cd tailscale_1.26.1_amd64
./tailscaled --tun=userspace-networking --outbound-http-proxy-listen=localhost:8055 &>/dev/null &
./tailscale up --authkey=${TAILSCALE_AUTHKEY} &>/dev/null &
HTTP_PROXY=http://localhost:8055/
