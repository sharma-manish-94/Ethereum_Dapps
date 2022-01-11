// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SimpleStorage {
    uint256 storedData;

    function set(uint256 x) public {
        storedData = x;
    }

    function get() public view returns (uint256) {
        return storedData;
    }

    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    Person[] public people;
    mapping(string => uint256) namToFavouriteNumber;

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(Person(_favouriteNumber, _name));
        namToFavouriteNumber[_name] = _favouriteNumber;
    }
}
