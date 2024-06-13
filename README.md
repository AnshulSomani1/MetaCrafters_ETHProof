# MetaCrafters_ETHProof
Module 3 Assessment

# YourToken Smart Contract

The `YourToken` contract is a simple ERC-like token contract on the Ethereum blockchain, implemented in Solidity.

## License

This contract is licensed under the MIT License.

## Overview

The `YourToken` contract allows for the minting and burning of a custom token:

- **nameOfToken**: Public string for the token name.
- **symbolOfToken**: Public string for the token symbol.
- **totalTokens**: Total supply of the tokens.
- **accountBalances**: Mapping to track token balances by address.

## Functions

- **mintTokens(address recipient, uint amount)**: Mints `amount` tokens to the `recipient`.
- **burnTokens(address holder, uint amount)**: Burns `amount` tokens from the `holder`, provided they have enough balance.

## Security Considerations

Ensure the contract's deployer is trusted, as they can mint or burn tokens, affecting the total supply and balances.

## Usage

1. Deploy the contract to the Ethereum blockchain.
2. Interact with it using a web3 provider or DApp.
3. Mint tokens via `mintTokens` and burn tokens via `burnTokens` as needed.

This contract provides basic functionality for a fungible token.
