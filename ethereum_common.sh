#!/usr/bin/env bash

WORKSPACE=`pwd`

# Generate keyfile
if [ ! -e keyfile ]; then
    PASSWORD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c32)
    echo $PASSWORD > keyfile_password_file
    python3 -c "import os,eth_keyfile,json; print(json.dumps(eth_keyfile.create_keyfile_json(os.urandom(32), '$PASSWORD'.encode())))" > keyfile
  fi

# Launch liability
roslaunch ethereum_common erc20.launch \
    ens_contract:="0x4e978ed8A05b516D8130Ff7dF54Fbc8b7ceB6442" \
    lighthouse_contract:="airalab.lighthouse.4.robonomics.sid" \
    factory_contract:="factory.4.robonomics.sid" \
    erc20_token:="0x093ac06910f23570292fd5027a4fA558ed4Cd010" \
    keyfile:="$WORKSPACE/keyfile" \
    keyfile_password_file:="$WORKSPACE/keyfile_password_file" \
    web3_http_provider:="https://sidechain.aira.life/rpc" \
    web3_ws_provider:="wss://sidechain.aira.life/ws"
