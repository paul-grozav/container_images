# ============================================================================ #
# Author: Tancredi-Paul Grozav <paul@grozav.info>
# ============================================================================ #
set -x &&
echo "Building image ..." &&
date &&

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


date
echo "Done installing packages" &&
true
# ============================================================================ #
