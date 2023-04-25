//SPDX-License-Identifier: UNLICESED

pragma solidity > 0.7.0 < 0.9.0;

/*
 * Sample contract for functions types
 */

contract FunctionTypes {
    uint public num0 = 3;
    uint public res;
 
    function addNumbersView(uint _num2) public view returns(uint) {
        return (num0 + _num2);
    }

    function addNumbersPure(uint _num1, uint _num2) public pure returns(uint) {
        return (_num1 + _num2);
    }

    function addNumbersPayable(uint _num1, uint _num2) public payable returns(uint) {
        return (res=_num1 + _num2);
    }
}

