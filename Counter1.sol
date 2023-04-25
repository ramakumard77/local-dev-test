//SPDX-License-Identifier: UNLICESED
pragma solidity > 0.7.0 < 0.9.0;

import "hardhat/console.sol";

contract Counter1 {
    uint256 count; // persistent contract storage

    event counterIncremented(address sender, uint256 value);

    constructor(uint256 _count) {
        count = _count;
    }

    function increment() public {
        count += 1;
        console.log("The count value after increment", count);
        emit counterIncremented(msg.sender, count);
    }

    function getCount() public view returns (uint256) {
        console.log("The count value on getCount", count);
        return count;
    }
}