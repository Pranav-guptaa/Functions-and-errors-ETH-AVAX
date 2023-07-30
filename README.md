# ETH-AVAX: Functions and Errors

This repository contains a Solidity smart contract demonstrating the usage of `assert`, `revert`, and `require` statements for error handling. The contract includes functions for depositing and withdrawing funds, as well as checking the contract's balance.

## Code:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract {
    // Storage variables to store values
    uint256 public value1;
    uint256 public value2;
    string public message;

    // Function to set the value of value1
    function setValue1(uint256 _newValue) public {
        // Adding error handling for invalid inputs
        // The require statement checks if the _newValue is greater than 0
        // If the condition is not met, the function execution will revert with the specified error message

        require(_newValue > 0, "Value must be greater than zero");
        
        value1 = _newValue;
    }

    // Function to set the value of value2
    function setValue2(uint256 _newValue) public {
        // Adding error handling for invalid inputs
        // The require statement checks if the _newValue is greater than 0
        // If the condition is not met, the function execution will revert with the specified error message
        require(_newValue > 0, "Value must be greater than zero");
        
        value2 = _newValue;
    }

    // Function to set the value of the message
    function setMessage(string memory _newMessage) public {
        // Adding error handling for empty messages
        // The require statement checks if the length of _newMessage is greater than 0 (non-empty)
        // If the condition is not met, the function execution will revert with the specified error message
        require(bytes(_newMessage).length > 0, "Message cannot be empty");
        
        message = _newMessage;
    }
}
```

## Usage

To interact with the smart contract, you can use Remix, an online Solidity IDE. Follow these steps:

1. Git clone the repository.
```bash
git clone https://github.com/Pranav-guptaa/Functions-and-errors-ETH-AVAX
```
2. Using Live server extension of VS code you can deploy the javascript code.
3. Now, The Deployment is complete you can easily interact with application.

## Error Handling

The contract uses `require` statements for regular error handling, such as checking for valid conditions before proceeding with transactions. If a `require` statement evaluates to `false`, the transaction is reverted, and any gas consumed until that point is refunded to the caller.

## Author:

Pranav Gupta

## License

This project is licensed under the MIT License.