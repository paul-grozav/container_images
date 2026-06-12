# ============================================================================ #
# Author: Tancredi-Paul Grozav <paul@grozav.info>
# ============================================================================ #
set -x &&
date &&
echo "Building image ..." &&

apt-get update &&
apt-get install -y \
  ` # Connect to remote networks ` \
  openvpn \
  ` # OTP generator for logging in with 2FA ` \
  oathtool \
  ` # Forward tcp ports from local to VPN destination ` \
  socat \
  ` # ping to debug vpn access ` \
  ` # iputils-ping ` \
  ` # curl to debug vpn access ` \
  ` # curl ` \
  &&
apt-get clean &&
​rm -rf /var/lib/apt/lists/* &&

date &&
echo "Done installing packages" &&
true
# ============================================================================ #
