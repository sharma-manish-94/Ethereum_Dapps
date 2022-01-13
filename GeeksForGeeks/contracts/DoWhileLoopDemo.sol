// SPDX-License-Identifier: UNLICENSED

pragma solidity >= 0.5.0 < 0.9.0;

contract DoWhileLoopDemo{
    uint256[] data;
    uint8 j = 0;

    function loop() public returns (uint[] memory){
        do{
            j++;
            data.push(j);
        } while(j < 5);
        return data;
    }
}