// SPDX-License-Identifier: UNLICENSED

pragma solidity >= 0.5.0 < 0.9.0;

contract ForLoopDemo{
    uint256 [] data;
    uint8 j = 0;

    function loop() public returns (uint[] memory){
        for(j = 0; j<= 5; j++){
            data.push(j);
        }
        return data;
    }
}

