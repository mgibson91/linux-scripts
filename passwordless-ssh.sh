#!/bin/bash

# 1 = Host (user@ip)
# 2 = Password

sshpass -p $2 ssh $1 'mkdir -p .ssh'
cat ~/.ssh/id_rsa.pub | sshpass -p $2 ssh $1 'cat >> ~/.ssh/authorized_keys'
