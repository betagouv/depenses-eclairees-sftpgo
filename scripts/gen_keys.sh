#!/bin/bash

set -eux

rm -r host_keys
mkdir host_keys

ssh-keygen -t rsa -b 4096 -f host_keys/id_rsa -N "" -C ""
ssh-keygen -t ecdsa -b 521 -f host_keys/id_ecdsa -N "" -C ""
ssh-keygen -t ed25519 -f host_keys/id_ed25519 -N "" -C ""


