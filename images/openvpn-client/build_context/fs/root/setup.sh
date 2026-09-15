#!/bin/sh
# ============================================================================ #
# Author: Tancredi-Paul Grozav <paul@grozav.info>
# ============================================================================ #
set -x &&
echo "Building image ..." &&
# export DEBIAN_FRONTEND=noninteractive &&
# apt-get update &&
# apt-get install -y \
# apt-get clean &&
# rm -rf /var/lib/apt/lists/* &&
apk add \
  ` # Downloads the index temporarily to memory and deletes it immediately ` \
  ` # after installation finishes. This is to reduce the image size ` \
  --no-cache \
  ` # Connect to remote networks ` \
  openvpn \
  ` # OTP generator for logging in with 2FA ` \
  oath-toolkit-oathtool \
  ` # Forward tcp ports from local to VPN destination ` \
  socat \
  ` # Interact over std in and out with programs ` \
  expect \
  ` # Needed for the command: script . To simulate a tty for expect cmd ` \
  util-linux \
  ` # ping to debug vpn access. In alpine it exists, only debian needs it ` \
  ` # iputils-ping ` \
  ` # curl to debug vpn access ` \
  curl \
  &&
echo "Done installing packages" &&
set +x &&
true
# ============================================================================ #
