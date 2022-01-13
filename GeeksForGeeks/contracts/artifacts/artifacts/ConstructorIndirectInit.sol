// SPDX-License-Identifier: UNLICENSED

pragma solidity >= 0.5.0 < 0.9.0;

contract Base {
    string str;
    constructor(string memory _str){
        str = _str;
    }

    function Print() public pure returns(string memory){
        return "Indirect Initialization";
    }
}

contract Derived is Base{
    constructor(string memory _info) Base(
        string(abi.encodePacked(_info, _info))) {}

    function getStr() public view returns(string memory) {
        return str;
    }
}

contract caller {
    Derived derived = new Derived("GFG");
    function getResult() public view{
        derived.Print();
        derived.getStr();
    }
}