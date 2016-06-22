#!/bin/bash

# Exit on any errors.
set -e

PUPPET_INSTALL='puppet module install '

# install puppet modules
(puppet module list | grep acme-ohmyzsh) ||
    $PUPPET_INSTALL -v 0.1.2 acme-ohmyzsh
