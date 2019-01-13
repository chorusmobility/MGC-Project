MOBI Grand Challenge
====================
Our effort for The MOBI Grand Challenge (mobihacks.devpost.com) in kind cooperation with Chorus Mobility (www.chorus.mobi) and Decentralized Technologies (www.dczd.tech)


Use case
========

## Unmanned Traffic Management (UTM)

1. Self driving car ask UTM for a permissioned path between point A and point B
1. UTM offers a path permissioned
1. Self driving car send an acceptance message
1. Robonomics network provider create a permission in form of smart contract
1. When contract achieve Ethereum blockchain, permission became immutable

## Trading for on road priority

### Actors


- Vehicle Alice (Agrees to be Slower/Accept Payments and give Rights of Way)
This car's passenger made a preference selection to pay for a ride less money but arrive later than average ETA, within certain estimated time/price limits.

- Vehicle Bob (Wants to be Faster/Pay for Rights of Way)
This car's passenger made a preference selection to pay for a ride more money but arrive faster, with a larger maximum estimated price limit - auction winner

- Vehicle Charlie (Wants to be Faster/Pay for Rights of Way)
This car's passenger made a preference selection to pay for a ride more money but arrive faster, with a smaller maximum estimated price limit - auction loser

### Scenario

- Alice is in the left lane. Charlie in the Right Lane follows Bob. 
- Both Bob and Charlie want to move to the left lane and sending that request to Alice.
- Alice sets the minimum price she is willing to accept to give the rights of way (slow down and let either Bob or Charlie in the left lane )
- Bob submits the maximum price he is willing to pay for space
- Charlie submits the maximum price he is willing to pay for space
- Vickery auction is conducted.
- Auction results revealed 
- Bob wins the auction
- Alice slows down to let Bob take place in front of her in the left lane

How to launch
=============

Preparation
-----------
1. Install `Nix` package manager [nixos.org/nix](https://nixos.org/nix/),
2. Download this project
```bash
git clone git@github.com:airalab/mobi_grand_challenge.git
```
3. Build each package you would like to launch
```bash
nix build -f $PACKAGE_NAME/release.nix
```

4. Source executables path from `result` directory
```bash
source ./result/setup.bash
```

5. Launch packages you need
```bash
roslaunch $PACKAGE_NAME $LAUNCHFILE_NAME
```

AIRA packages
-------------
We need two AIRA services to communicate with Robonoimcs network

1. First launch `robonomics_liability` node to connect with Robonomics network providers
```
source ./result/setup.bash
source ./liability.sh
```

2. Then launch `ethereum_common` node to have a ROS API to web3
```
source ./result/setup.bash
source ./ethereum_common.sh
```

Configuration
=============

Airalab PoA Sidechain
---------------------
|             |                                                                                  |
| ------------| -------------------------------------------------------------------------------- |
| explorer    | https://sidechain.aira.life/                                                     |
| ssl rpc     | https://sidechain.aira.life/rpc                                                  |
| wss         | https://sidechain.aira.life/ws                                                   |
| Lightouse   | airalab.lighthouse.4.robonomics.sid, 0xE85764E29583224C1D063639d2AeeeD7c389DF4d  |
| Factory     | factory.4.robonomics.sid, 0xB12255b705dAe406D142c19787aA77859FECe0c6             |

Permissions market
------------------

|               |                                                                                 |
| ------------- | ------------------------------------------------------------------------------- |
| lighthouse    | airalab.lighthouse.4.robonomics.sid, 0xE85764E29583224C1D063639d2AeeeD7c389DF4d |
| model         | QmWK8hf15C4zYnksoaLvNrzkFtnX8LQCvQRYf8neTtXnBk                                  |
| objective A   | QmQuqUsTy3ue371ket4AfXTWCWRa5WHbRiPfEAQbauzLru                                  |
| objective B   | Qmb6SSXBq7bViBxDc62Ko1hvx6Ff1s5XvMZeogrG2gf5bF                                  |
| objective C   | QmWHox7NvCDgNnxgnNXbehJRGiidBBmGY26yRABY5UHYin                                  |
| token         | xrt.4.robonomics.sid, 0x093ac06910f23570292fd5027a4fA558ed4Cd010                |

Vehicle to vehicle road priority market
---------------------------------------

|               |                                                                                 |
| ------------- | ------------------------------------------------------------------------------- |
| lighthouse    | airalab.lighthouse.4.robonomics.sid, 0xE85764E29583224C1D063639d2AeeeD7c389DF4d |
| model         | QmRybtgtRntQnUKydCtAPZHGuSp4zHDeLZQvjTZhDKGxrF                                  |
| token         | xrt.4.robonomics.sid, 0x093ac06910f23570292fd5027a4fA558ed4Cd010                |
