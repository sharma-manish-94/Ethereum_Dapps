//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.16 <0.9.0;

contract PropertyInheritance {
    address owner;
    bool deceased;
    uint256 money;

    constructor() public payable {
        owner = msg.sender;
        money = msg.value;
        deceased = false;
    }

    modifier oneOwner() {
        require(msg.sender == owner);
        _;
    }

    modifier isDeceased() {
        require(deceased == true);
        _;
    }

    address payable[] wallets;

    mapping(address => uint256) inheritance;

    function setUp(address payable _wallet, uint256 _inheritance)
        public
        oneOwner
    {
        wallets.push(_wallet);
        inheritance[_wallet] = _inheritance;
    }

    function moneyPaid() private isDeceased {
        for (uint8 i = 0; i < wallets.length; i++) {
            wallets[i].transfer(inheritance[wallets[i]]);
        }
    }

    function died() public oneOwner {
        deceased = true;
        moneyPaid();
    }
}
