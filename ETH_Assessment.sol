// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract YourToken {

    // Public variables to store details about the coin
    string public nameOfToken = "YourToken";
    string public symbolOfToken = "YTK";
    uint256 public totalTokens = 0;

    // Mapping to store balances of addresses
    mapping(address => uint256) public accountBalances;

    // Mint function to increase total supply and balance of the sender
    function mintTokens(address recipient, uint amount) public {
        totalTokens += amount;
        accountBalances[recipient] += amount;
    }

    // Burn function to decrease total supply and balance of the sender
    function burnTokens(address holder, uint amount) public {
        require(accountBalances[holder] >= amount, "Insufficient balance to burn");
        totalTokens -= amount;
        accountBalances[holder] -= amount;
    }
}
