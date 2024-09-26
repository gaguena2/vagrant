#!/bin/bash
export VAULT_ADDR="http://127.0.0.1:8200"
export TOKEN_ROOT="vagrant@vault!1234"
sudo apt-get update
sudo apt-get -y install unzip
wget https://releases.hashicorp.com/vault/1.17.6/vault_1.17.6_linux_amd64.zip && unzip vault_1.17.6_linux_amd64.zip
sudo mv vault /usr/local/bin/
rm /home/vagrant/*
vault server -dev -dev-listen-address=0.0.0.0:8200 -dev-root-token-id=$TOKEN_ROOT &