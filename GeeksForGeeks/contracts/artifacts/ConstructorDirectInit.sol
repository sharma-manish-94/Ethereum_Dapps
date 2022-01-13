// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0 < 0.9.0;
contract Base{
    uint256 data;
    constructor(uint256 _data) {
        data = _data;
    }

    function Print() public pure returns (string memory){
        return "Direct Initialization";
    }
}

contract Derived is Base(2){
    constructor(){}
    function getData() public  view returns (uint256){
        uint256 result = data ** 2;
        return result;
    }

}


contract caller {
    Derived derived = new Derived();
    function getResult() public view returns (uint256){
        derived.Print();
        return derived.getData();
    }
}
