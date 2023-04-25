//SPDX-License-Identifier: UNLICESED

pragma solidity > 0.7.0 < 0.9.0;

/*
 * Sample contract for functions
 */

contract Functions {

    int public result;

    function addNumbers(uint _num1, uint _num2) public returns(int) {
        return (result = (int)(_num1 + _num2));
    }

    function subNumbers(uint _num1, uint _num2) public returns(int) {
        return (result = (int)(_num1 - _num2));
    }

    function mulNumbers(uint _num1, uint _num2) public returns(int) {
        return (result = (int)(_num1 * _num2));
    }

    function divNumbers(int _num1, int _num2) public returns(int) {
        require(_num2 > 0, "The second number should be greater than zero");
        return (result = _num1 - _num2);
    }
}