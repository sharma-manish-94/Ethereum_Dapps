pragma solidity ^0.8.10;

contract DataTypes{
    uint x = 9;
    int i = -68;
    uint8 j = 17;
    bool isEtherCool = true;
    address owner = msg.sender;
    bytes32 bMsg = "hello";
    string sMsg = "hello";


    function getStateVariables() public view returns 
    (uint, int, uint, bool, address, bytes32, string memory){
        return (x,i,j,isEtherCool,owner, bMsg, sMsg);
    }
}