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
