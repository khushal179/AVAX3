// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.7.3/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.7.3/contracts/access/Ownable.sol";

contract MToken is ERC20, Ownable {
    
    constructor() ERC20("CraftToken", "CT") {
        _mint(msg.sender, 100 * 10 ** uint(decimals())); // Mint 100 tokens
    }

    function mintToken(uint amount) external onlyOwner {
        uint minted = amount * 10 ** uint(decimals());
        _mint(msg.sender, minted);
        // console.log("You minted %s tokens", amount);
    }

    function burnToken(uint amount) external {
        uint burned = amount * 10 ** uint(decimals());
        _burn(msg.sender, burned);
        // console.log("You burned %s tokens.", amount);    
    }

    function transferToken(address recipient, uint amount) public {
        uint transferred = amount * 10 ** uint(decimals());
        _transfer(msg.sender, recipient, transferred);
       
    }
}

