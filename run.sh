#!/bin/bash

case "$1" in
  centos7)  ;;
  fedora23) ;;
  *) echo "not support yet"
     exit 1;;
esac

ansible-playbook ./playbook-$1.yml -u ${USER} -i "localhost," -c local -v --sudo --vault-password-file=./etc/vault.txt
