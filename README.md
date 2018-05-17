#  Demo 1. Ethereum development tools & services

Use this repo as an example of setup configuration for [Parity](https://github.com/paritytech/parity) *private* PoA Ethereum network. Check out steps of full setup process at [parity's wiki](https://wiki.parity.io/Demo-PoA-tutorial).

In our case we setup 2 private nodes with 2 signers.

### UI client

It also includes UI client for Parity network which is used to write, deploy and track smart contracts, manage users' wallets and some other things.

To install the client run
```bash
npm run get:ui
```

and to start it you need to execute
```bash
npm run run:ui
```

### Explorers

A blockchain explorer is a browser for the blockchain, it allows you to explore the whole entire blockchain.

For the sake of showing different versions of blockchain explorers you are prompted to choose one of suggested explorers: [Etherscan Light](https://github.com/gobitfly/etherchain-light) and [Ethereum Explorer](EthereumExplorerV2).

To install **Ethereum Light** use command
```bash
npm run get:explorer
```
for **Ethereum Explorer** execute
```bash
npm run get:explorer2
```

To run them execute ether (for **Ethereum Light**)
```bash
npm run run:explorer
```
or (for **Ethereum Explorer**)
```bash
npm run run:explorer2
```

### Parity nodes

When all setup work has done execute
```bash
npm run run:node0
```
and
```bash
npm run run:node1
```