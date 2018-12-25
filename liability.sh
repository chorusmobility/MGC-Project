#!/usr/bin/env bash

WORKSPACE=`pwd`

# Generate keyfile
if [ ! -e keyfile ]; then
    PASSWORD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c32)
    echo $PASSWORD > keyfile_password_file
    python3 -c "import os,eth_keyfile,json; print(json.dumps(eth_keyfile.create_keyfile_json(os.urandom(32), '$PASSWORD'.encode())))" > keyfile
  fi

# Launch liability
roslaunch robonomics_liability liability.launch \
    ens_contract:="0x4e978ed8A05b516D8130Ff7dF54Fbc8b7ceB6442" \
    factory_contract:="factory.4.robonomics.sid" \
    lighthouse_contract:="airalab.lighthouse.4.robonomics.sid" \
    keyfile:="$WORKSPACE/keyfile" \
    keyfile_password_file:="$WORKSPACE/keyfile_password_file" \
    web3_http_provider:="https://sidechain.aira.life/rpc" \
    web3_ws_provider:="wss://sidechain.aira.life/ws"
