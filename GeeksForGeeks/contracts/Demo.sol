// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.16 <0.9.0;

contract Test {
    uint256 public var1;
    uint256 public var2;
    uint256 public sum;

    function set(uint256 x, uint256 y) public {
        var1 = x;
        var2 = y;
        sum = var1 + var2;
    }

    function get() public view returns (uint256) {
        return sum;
    }
}
