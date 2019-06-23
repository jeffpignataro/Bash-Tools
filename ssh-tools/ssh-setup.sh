#!/usr/bin/env bash

#Local Machine
ssh-keygen -t rsa -i ~/.ssh/id_rsa
ssh-keygen -t rsa -i ~/.ssh/home_key
ssh-keygen -t rsa -i ~/.ssh/terminus

#Remote Machine
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

#Local Machine
 ssh-copy-id -i .ssh/key.pub MachineName
 #alternatively
 cat ~/.ssh/key.pub | ssh UserName@MachineName "mkdir -p ~/.ssh && chmod 600 ~/.ssh && cat >>  ~/.ssh/authorized_keys"
