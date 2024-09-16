// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract CustomToken {

    // public variables here
    string public coinName = "SOLIDITY";
    string public coinSymbol = "SOL";
    uint public coinSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mintTokens(address account, uint amount) public {
        coinSupply += amount;
        balances[account] += amount;
    }

    // burn function
    function burnTokens(address account, uint amount) public {
        require(balances[account] >= amount, "Insufficient balance to burn");
        coinSupply -= amount;
        balances[account] -= amount;
    }
}
