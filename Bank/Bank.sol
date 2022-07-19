pragma solidity ^0.5.9;

contract Bank {
    address public accOwnerAddress;
    uint accBalance;

    constructor () public payable {
        require(msg.value == 1 wei);
        accOwnerAddress = msg.sender;
    }

    function deposit() public payable returns (uint) {
        accBalance += msg.value;
        return accBalance;
    }

    function withdraw(uint balance) public returns (uint) {
        require(balance <= accBalance);
        accBalance -= balance;
        msg.sender.transfer(balance);
        return balance;
    }
}