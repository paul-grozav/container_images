#!/bin/bash
# ============================================================================ #
# Author: Tancredi-Paul Grozav <paul@grozav.info>
# ============================================================================ #
set -x &&
echo "Building image ..." &&
export DEBIAN_FRONTEND=noninteractive &&
apt-get update &&
apt-get install -y \
  ` # Connect to remote networks ` \
  openvpn \
  ` # OTP generator for logging in with 2FA ` \
  oathtool \
  ` # Forward tcp ports from local to VPN destination ` \
  socat \
  ` # Interact over std in and out with programs ` \
  expect \
  ` # ping to debug vpn access ` \
  iputils-ping \
  ` # curl to debug vpn access ` \
  curl \
  &&
apt-get clean &&
​rm -rf /var/lib/apt/lists/* &&

echo "Done installing packages" &&
set +x &&
true
# ============================================================================ #
