// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SingleNumber {
    address public owner;
    uint256 public minBalance = 0.01 ether;

    event NumberEmitted(uint256 number);

    modifier onlyOwnerWithBalance() {
        require(msg.sender == owner, "Only the owner can call this function");
        require(msg.sender.balance >= minBalance, "Insufficient balance to emit a number");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function emitNumber(uint256 _number) public onlyOwnerWithBalance {
        emit NumberEmitted(_number);
    }
}