#!/bin/bash

echo "Load host keys..."

mkdir -p host_keys

echo -n "$FILE_CONTENT_ID_RSA" | tr '_' '\n' > host_keys/id_rsa
echo -n "$FILE_CONTENT_ID_RSA_PUB" | tr '_' '\n' > host_keys/id_rsa.pub
echo -n "$FILE_CONTENT_ID_ECDSA" | tr '_' '\n' > host_keys/id_ecdsa
echo -n "$FILE_CONTENT_ID_ECDSA_PUB" | tr '_' '\n' > host_keys/id_ecdsa.pub
echo -n "$FILE_CONTENT_ID_ED25519" | tr '_' '\n' > host_keys/id_ed25519
echo -n "$FILE_CONTENT_ID_ED25519_PUB" | tr '_' '\n' > host_keys/id_ed25519.pub

chmod 700 host_keys
chmod 600 host_keys/*

echo "Successfuly loaded host keys."

