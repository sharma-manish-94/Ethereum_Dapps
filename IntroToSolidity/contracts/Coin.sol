// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Coin {
    /*
        below code is same as this
        function minter() external view returns (address){
            return minter;
        }
    */
    address public minter;

    /*
    the public keyword below creates a getter method for the mapping
    function balances(address _account) external view returns (uint){
        return balances[_account];
    }
    */

    mapping(address => uint256) public balances;

    event Sent(address from, address to, uint256 amount);

    /**
    to listen to the events, we can use this js code
    Coin.Sent().watch({}, '', function(error, result) {
    if (!error) {
        console.log("Coin transfer: " + result.args.amount +
            " coins were sent from " + result.args.from +
            " to " + result.args.to + ".");
        console.log("Balances now:\n" +
            "Sender: " + Coin.balances.call(result.args.from) +
            "Receiver: " + Coin.balances.call(result.args.to));
    }
    })
     */

    constructor() {
        minter = msg.sender;
    }

    //msg.sender is always the address where the function call came from.
    function mint(address receiver, uint256 amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }

    error InsufficientBalance(uint256 requested, uint256 available);

    function send(address receiver, uint256 amount) public {
        if (amount > balances[msg.sender]) {
            revert InsufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
        }

        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
