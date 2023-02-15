// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract MultiSig {
    address[] public owners; // store wallet owner addresses
    uint public transactionCount; //store the required amount of confirmations needed to execute a transaction
    uint public required;

    //Define a Transaction struct that includes
    struct Transaction {
        address destination; //destination of the transaction's value.
        uint value; //value of the transaction in wei.
        bool executed; // indicates if the transaction has been executed.
    }

    //Define a mapping that maps transaction IDs to Transaction structs
    mapping(uint => Transaction) public transactions;

    //maps the transaction id (uint) to an owner (address) to whether or not they have confirmed the transaction (bool).
    mapping(uint => mapping(address => bool)) public confirmations;

    //  function to put our transactions into that storage!
    function addTransaction(
        address destination,
        uint value
    ) public returns (uint transactionId) {
        //This function should create a new transaction struct and add it to the transactions storage variable
        transactionId = transactionCount; // transactionCount is the ID of the transaction
        transactions[transactionCount] = Transaction(destination, value, false); //Set the executed boolean should be set to false by default.
        transactionCount += 1; // increment transactionCount
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
