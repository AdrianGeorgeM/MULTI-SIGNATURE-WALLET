// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract MultiSig {
    address[] public owners; // store wallet owner addresses
    uint public transactionCount; //store the required amount of confirmations needed to execute a transaction
    uint public required;

    //Define a Transaction struct that includes
    struct Transaction {
        address destination;
        uint value;
        bool executed;
    }

    constructor(address[] memory _owners, uint _confirmations) {
        //revert the deployment transaction in the following situations:
        //1. if the number of owners is 0
        //2. if the number of confirmations is 0
        //3. if the number of confirmations is greater than the number of owners
        require(_owners.length > 0); //    // No owner addresses are sent.
        require(_confirmations > 0); //Number of required confirmations is zero.
        require(_confirmations <= _owners.length); // Number of required confirmations is more than the total number of owner addresses.
        owners = _owners;
        required = _confirmations;
    }
}
