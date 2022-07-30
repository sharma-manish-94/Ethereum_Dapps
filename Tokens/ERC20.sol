pragma solidity ^0.5.17;

contract ERC20Token {
    string constant _name = "PracticeToken";
    string constant _symbol = "$PT$";
    uint8 _decimals = 10;
    uint256 _totalSupply;
    uint256 _decimalfactor = 10 ** uint256(_decimals);
    uint256  _Max_Token = 10000;

    mapping (address => uint256) public _balances;
    mapping (address => mapping (address => uint256)) private _allowed;

    event Transfer(
        address indexed from,
        address indexed to,
        uint256 value
    );

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

    constructor() public {
        _totalSupply = _Max_Token;
        _balances[msg.sender] = _Max_Token;
    }

    function totalSupply() public view returns(uint256){
        return _totalSupply;
    }

    function balanceOf(address who) public view returns(uint256){
        return _balances[who];
    }

    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowed[owner][spender];
    }

    function approve(address spender, uint256 value) public returns (bool){
        require(spender != address(0));
        _allowed[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function transfer(address _to, uint256 value) public returns (bool) {
        require(_to != address(0));
        require(value <= _balances[msg.sender]);
        _balances[msg.sender] -= value;
        _balances[_to] += value;
        emit Transfer(msg.sender, _to, value);
        return true;
    }

    function transferFrom(address _from, address _to, uint256 value) public returns (bool) {
        require(value <= _balances[_from]);
        require(value <= _allowed[_from][msg.sender]);
        require(_to != address(0));
        _balances[_from] -= value;
        _balances[_to] += value;
        _allowed[_from][msg.sender] -= value;

        emit Transfer(_from, _to, value);
        return true;
    }




}