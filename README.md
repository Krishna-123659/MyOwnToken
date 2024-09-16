# MyOwnToken
## License Declaration:
``` SPDX-License-Identifier: MIT```
### Contract Details
## Contract Name: ### CustomToken
This smart contract defines a custom token with the following features:

* Public token name and symbol.
* A total token supply that starts at 0.
* Minting and burning functionality to manage token supply.
* Mapping of token balances for each address.

## Contract Variables
* coinName: The name of the token, set as "SOLIDITY".
* coinSymbol: The symbol of the token, set as "SOL".
* coinSupply: The total supply of the token, which starts at 0 but can increase through minting.
```string public coinName = "SOLIDITY";
string public coinSymbol = "SOL";
uint public coinSupply = 0;
```

## Mapping
### balances: This mapping keeps track of each address and the number of tokens it holds.

```mapping(address => uint) public balances;```

### Functions
```mintTokens(address account, uint amount)```
The mintTokens function allows minting new tokens and assigning them to a specific address.

### Parameters:
* account: The address that will receive the newly minted tokens.
* amount: The number of tokens to be minted.

### Functionality:
* Increases the total token supply by the amount minted.
* Adds the minted tokens to the balance of the specified address.

```function mintTokens(address account, uint amount) public {
    coinSupply += amount;
    balances[account] += amount;
}
```

```burnTokens(address account, uint amount)```
The burnTokens function allows burning (destroying) tokens from a specific address.

### Parameters:
* account: The address whose tokens will be burned.
* amount: The number of tokens to burn.

### Functionality:
* Requires the account to have a sufficient balance.
* Decreases the total token supply by the amount burned.
* Deducts the burned tokens from the account's balance.

```function burnTokens(address account, uint amount) public {
    require(balances[account] >= amount, "Insufficient balance to burn");
    coinSupply -= amount;
    balances[account] -= amount;
}
```

### Usage
Use mintTokens to increase the token supply and allocate tokens to an account.
Use burnTokens to decrease the token supply and deduct tokens from an account.

### Example Workflow
1. Mint Tokens: Add 100 tokens to an account.
```
mintTokens(0x123..., 100);
```

2. Burn Tokens: Burn 50 tokens from an account.
```
burnTokens(0x123..., 50);
```

## Help
### Common issues and solutions:

* Compilation Errors: Ensure you are using the correct Solidity version (^0.8.9). Check for syntax errors or missing semicolons.

* Insufficient Balance for Burning: The burn function checks if the address has sufficient balance before proceeding. Ensure that the address has enough tokens to burn.

// Command to view more details
```myToken.balances("0xYourAddressHere");```

## Author
KRISHNA RAZDAN

* GitHub: @Krishna-123659
* Email: krish121340@gmail.com
