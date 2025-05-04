// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract TokenVk {
    string private _name = "Bootcamp";
    string private _symbol = "OGC"
    uint8 private _decimals = 18;


    function name() view public returns(string memory){

        return _name;
    }

    function symbol() view public returns(string memory){
        return _symbol;
    }

    function decimals() view public returns(uint8){
        return _decimals;
    }

    function balanceOf(address _user) view public returns(uint256){
        return balance[_user];
    }

    function transfer(address to, uint256 amount) public {
        balance[msg.sender] -= amount;
        balance[to] += amount;
    }
    function approve(address spender, uint256 amount) public {
        _allowance[msg.sender][spender] = amount;
    }
    function transferFrom(address from, address to, uint256 amount) public{
        if (_allowance[from][msg.sender] = amount){
            revert("vc nao tem allowance suficiente");
        }   
        balance[from] -= amount;
        balance[to] += amount;
    }
    
    function symbol() public view returns(string memory){
        return _symbol;
    }

    
    constructor(uint256 initialSupply) {
        _totalSupply = initialSupply;
        // Initialize _number with a value
        _number = 42; // Example value
        owner = msg.sender;
    }
    
    function getNumber() public view returns (uint256) {
        return _number;  // Simplified to ensure no reversion
    }
    
    function setNumber(uint256 newNumber) public {
        _number = newNumber;
    }
    
    // Simple function to check if the contract is alive
    function ping() public pure returns (string memory) {
        return "pong";
    }
    
    // Other token functions...
}