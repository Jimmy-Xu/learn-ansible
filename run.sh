#!/bin/bash

ansible-playbook ./playbook.yml -u ${USER} -i "localhost," -c local -v --sudo --vault-password-file=./etc/vault.txt
