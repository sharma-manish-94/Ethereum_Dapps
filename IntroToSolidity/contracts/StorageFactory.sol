// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.22 <0.9.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function StorageFactoryStore(
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {
        SimpleStorage _simpleStorage = 
            SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
            _simpleStorage.set(_simpleStorageNumber);
    }

    function StorageFactoryGet(
        uint256 _simpleStorageIndex
    ) public view returns (uint256){
        SimpleStorage simpleStorage = 
            SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
            return simpleStorage.get();
    }
}