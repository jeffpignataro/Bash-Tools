#!/usr/bin/env bash
set -e

echo "What is the nickname for the remote machine?"
read remoteMachineName

echo "What is the remote machine's IP address?"
read remoteMachineIpAddress

echo "What username would you like to use to login on the remote machine?"
read remoteMachineUserName

echo "What is the name of the local public key without extension (default 'id_rsa')"
read localMachinePublicKey
localMachinePublicKey=${localMachinePublicKey:-id_rsa}

configDataToAdd="Host $remoteMachineName\n
    HostName $remoteMachineIpAddress\n
    User $remoteMachineUserName\n
    IdentityFile ~/.ssh/$localMachinePublicKey.pub"
echo "Adding this to SSH config..."    
echo -e $configDataToAdd
echo -e $configDataToAdd >> ~/.ssh/config
echo "Done!"