#!/bin/bash
set -euo pipefail

# Install nushell from Gemfury repo
cat > /etc/yum.repos.d/fury-nushell.repo <<'EOF'
[gemfury-nushell]
name=Gemfury Nushell Repo
baseurl=https://yum.fury.io/nushell/
enabled=1
gpgcheck=0
gpgkey=https://yum.fury.io/nushell/gpg.key
EOF
dnf install -y nushell
