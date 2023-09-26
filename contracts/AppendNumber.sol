// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AppendNumber {
    uint256[] public numberArray;

    event NumberAppended(uint256 indexed number);

    constructor() {
        // Initialize an empty array
        numberArray = new uint256[](0);
    }

    function appendSingleNumber(uint256 _number) public {
        numberArray.push(_number);
        emit NumberAppended(_number);
    }

    function appendNumbers(uint256[] memory _numbers) public {
        for (uint256 i = 0; i < _numbers.length; i++) {
            numberArray.push(_numbers[i]);
            emit NumberAppended(_numbers[i]);
        }
    }

    function getNumberArray() public view returns (uint256[] memory) {
        return numberArray;
    }
}