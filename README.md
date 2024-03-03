# AVAX3
### Smart Contract 

#### Project Name: MToken

#### License: MIT License

---

#### Description:
The `MToken` smart contract is an ERC20 token contract that provides basic functionalities for token management, including minting, burning, and transferring tokens. This README provides an overview of the contract's features, deployment instructions, and usage guidelines.

---

#### Contract Structure:

- **Solidity Version:** ^0.8.20
- **SPDX-License-Identifier:** MIT

#### Dependencies:
- This contract utilizes OpenZeppelin Contracts library version 4.7.3 for ERC20 token implementation and access control functionalities.

---

#### Features:

1. **Token Name and Symbol:**
   - The token is named "CraftToken" with the symbol "CT".

2. **Token Minting:**
   - The contract owner can mint additional tokens using the `mintToken` function.
   - Tokens are minted in multiples of the token decimals.

3. **Token Burning:**
   - Token holders can burn their tokens using the `burnToken` function.
   - Tokens are burned in multiples of the token decimals.

4. **Token Transfer:**
   - Token holders can transfer tokens to other addresses using the `transferToken` function.

5. **Access Control:**
   - The contract inherits from the `Ownable` contract of OpenZeppelin, providing access control functionality.
   - Only the owner of the contract can mint tokens.

---

#### Deployment Instructions:

1. **Compile the Contract:**
   - Compile the `MToken` contract using a Solidity compiler version compatible with ^0.8.20.

2. **Deploy the Contract:**
   - Deploy the compiled contract on an Ethereum-compatible blockchain network.

3. **Token Initialization:**
   - Upon deployment, the contract initializes with 100 tokens minted to the contract deployer's address.

---

#### Usage:

1. **Minting Tokens:**
   - Call the `mintToken` function with the desired amount of tokens to mint.
   - Only the contract owner can mint tokens.

2. **Burning Tokens:**
   - Call the `burnToken` function with the desired amount of tokens to burn.
   - Tokens can be burned by any token holder.

3. **Transferring Tokens:**
   - Use the `transferToken` function to transfer tokens to another Ethereum address.

---
