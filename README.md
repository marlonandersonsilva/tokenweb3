# TokenVk Project

This project implements a simple ERC-20 like token called "Bootcamp" with the symbol "OGC". The token includes basic functionality for transfers, approvals, and balance checking.

## Features

- Token name: Bootcamp
- Token symbol: OGC
- Decimals: 18
- Basic token functions:
  - `balanceOf`: Check the balance of a specific address
  - `transfer`: Transfer tokens to another address
  - `approve`: Approve another address to spend tokens on your behalf
  - `transferFrom`: Transfer tokens from one address to another (with approval)
- Additional utility functions:
  - `getNumber` and `setNumber`: Simple getter/setter functions for testing
  - `ping`: Simple function to check if the contract is alive

## Getting Started

### Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation)

### Installation

1. Clone the repository
```bash
git clone <git@github.com:marlonandersonsilva/tokenweb3.git>
cd blochchainDeploy
```

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
