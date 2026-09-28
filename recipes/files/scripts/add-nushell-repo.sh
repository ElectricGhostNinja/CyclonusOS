#!/bin/bash
set -euo pipefail

# Enable the nushell COPR and refresh metadata
dnf install -y dnf-plugins-core
dnf copr enable -y nu/nushell
dnf makecache
