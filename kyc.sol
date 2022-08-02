pragma solidity ^0.5.17;

contract KYC {

    struct Customer {
        string userName;
        string customerData;
        address bank;
    }

    struct Bank {
        string name;
        address ethAddress;
        string regNumber;
    }

    mapping (string => Customer) public customerList;

    function addCustomer(string memory _userName, string memory _customerData) public {
        require(keccak256(bytes(customerList[_userName].userName)) == keccak256(bytes("")),"UserName already exists");
        Customer storage customer = customerList[_userName];
        customer.userName = _userName;
        customer.customerData = _customerData;
        customer.bank = msg.sender;
    }

    function modifyCustomer(string memory _userName, string memory _customerData) public {
        require(keccak256(bytes(customerList[_userName].userName)) != keccak256(bytes("")), "UserName doesnot exist");
        Customer storage customer = customerList[_userName];
        customer.userName = _userName;
        customer.customerData = _customerData;
        customer.bank = msg.sender;
    }

    function viewCustomer(string memory _userName) public view returns (string memory) {
        require(keccak256(bytes(customerList[_userName].userName)) != keccak256(bytes("")),"UserName doesnot exist");
        return customerList[_userName].customerData;
    }
}