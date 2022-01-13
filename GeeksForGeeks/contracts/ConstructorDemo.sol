// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.0 < 0.9.0;
contract ContructorDemo {
    string str;
    constructor() {
        str = "geeksforgeeks";
    }
    function getValue() public view returns(string memory) {
        return str;
    }
    
}