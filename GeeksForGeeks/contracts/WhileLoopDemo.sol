// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.5.0 < 0.9.0;

contract WhileLoopDemo{
    uint256 [] data;
    uint8 i = 0;

    function loop() public returns (uint256 [] memory){
        while(i < 5){
            data.push(i);
            i++;
        }
        return data;
    }

}