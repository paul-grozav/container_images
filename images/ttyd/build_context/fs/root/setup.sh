#!/bin/sh
# ============================================================================ #
# Author: Tancredi-Paul Grozav <paul@grozav.info>
# ============================================================================ #
# Part of the remote package.
# See also:
# 1. https://github.com/tsl0922/ttyd
# 2. https://github.com/jpillora/chisel
# 3. https://github.com/novnc/novnc
# ============================================================================ #
set -x &&
echo "Building image ..." &&
apk add \
  ` # Downloads the index temporarily to memory and deletes it immediately ` \
  ` # after installation finishes. This is to reduce the image size ` \
  --no-cache \
  ` # expose the shell session through http ` \
  ttyd \
  ` # Allow ssh connections to other machines ` \
  openssh-client \
  &&
echo "Successfully installed packages!" &&
set +x &&
true
# ============================================================================ #
