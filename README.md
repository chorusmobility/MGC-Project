MOBI Grand Challenge
====================
Our effort for The MOBI Grand Challenge (mobihacks.devpost.com) in kind cooperation with Chorus Mobility (www.chorus.mobi) and Decentralized Technologies (www.dczd.tech)


Use case
========
1. Unmanned Traffic Management
    1. Self driving car ask UTM for a permissioned path between point A and point B
    1. UTM offers a path permissioned
    1. Self driving car send an acceptance message
    1. Robonomics network provider create a permission in form of smart contract
    1. When contract achieve Ethereum blockchain, permission became immutable
2. Trading for on road priority

#TODO

How to launch
=============

Preparation
-----------
1. Install `Nix` package manager [nixos.org/nix](https://nixos.org/nix/),
2. Download this project
```
git clone git@github.com:airalab/mobi_grand_challenge.git
```
3. Build it
```
nix build -f release.nix
```

AIRA packages
-------------
We will need two persistent terminals for logs

1. In first launch `robonomics_liability` node
```
source ./result/setup.bash
source ./liability.sh
```

2. In second one launch `ethereum_common` node 
```
source ./result/setup.bash
source ./liability.sh
```

Application specifig packages
-----------------------------
We will use a `vehicle` package based on a [template](https://github.com/airalab/autonomous_agent_template)
It consists of `trader_node` and `worker_node`. Trader responsible for negotiations. It broadcast signed demand / offer messages.
When *Robonomics network* provider recieve an offer and demand with attributes (model, objective, cost and etc.) the same, it will follow with transaction to create a contract between parties.


Abbreviations and acronyms
==========================
- UTM - Unmanned Traffic Management system
