//SPDX-License-Identifier: UNLICESED
pragma solidity > 0.7.0 < 0.9.0;

/*
 * Sample contract for handling errors
 */
contract HandleErrors {

    function testRequire(uint _i) public pure {
        // Acts as a pre-condition. The control/transaction reverts from functionif i value <= 10,
        // remaining gas for this transaction will not be returned.
        require(_i > 10, "Input must be greater than 10 is Required.");
    }

    function testRevert(uint _i) public pure {
        // The control/transaction reverts from function to the initial state 
        // if i value <= 10, remaining gas will be returned back.
        if (_i <= 10) {
            revert("Reverted from method. Input must be greater than 10");
        }
    }

    uint public num;
    function setNum(uint _num) public {
        num = _num;
    }
    function testAssert() public view {
        // If num value is not zero, the control reverts and error will be logged
        assert(num == 0);
    }
}