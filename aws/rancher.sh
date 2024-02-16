#!/bin/bash
curl https://releases.rancher.com/install-docker/24.0.sh | sh
docker run -d --restart=unless-stopped \
  -p 80:80 -p 443:443 \
  --privileged \
  rancher/rancher:2.7.10