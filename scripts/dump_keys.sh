#!/bin/bash


if grep -q '_' host_keys/*; then
    echo "Erreur : Le caractère '_' est présent dans les fichiers de clés."
    grep '_' host_keys/*
    exit 1
fi

echo -n 'FILE_CONTENT_ID_RSA=' && tr '\n' '_' < host_keys/id_rsa
echo -n 'FILE_CONTENT_ID_RSA_PUB=' && tr '\n' '_' < host_keys/id_rsa.pub
echo -n 'FILE_CONTENT_ID_ECDSA=' && tr '\n' '_' < host_keys/id_ecdsa
echo -n 'FILE_CONTENT_ID_ECDSA_PUB=' && tr '\n' '_' < host_keys/id_ecdsa.pub
echo -n 'FILE_CONTENT_ID_ED25519=' && tr '\n' '_' < host_keys/id_ed25519
echo -n 'FILE_CONTENT_ID_ED25519_PUB=' && tr '\n' '_' < host_keys/id_ed25519.pub
echo

