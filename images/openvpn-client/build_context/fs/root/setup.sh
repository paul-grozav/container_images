#!/bin/sh
# ============================================================================ #
# Author: Tancredi-Paul Grozav <paul@grozav.info>
# ============================================================================ #
set -x &&
date &&
echo "Building image ..." &&

apk add \
  ` # prevents Alpine from saving local package index caches to disk, ` \
  ` # keeping the layer minimal. ` \
  --no-cache \
  ` # Connect to remote networks ` \
  openvpn \
  ` # OTP generator for logging in with 2FA ` \
  oath-toolkit-oathtool \
  ` # Forward tcp ports from local to VPN destination ` \
  socat \
  ` # Interact over std in and out with programs ` \
  expect \
  ` # ping to debug vpn access ` \
  ` # iputils-ping ` \
  ` # curl to debug vpn access ` \
  ` # curl ` \
  &&
# apt-get clean &&
# ​rm -rf /var/lib/apt/lists/* &&
echo "Done installing packages" &&
set +x &&
true
# ============================================================================ #
