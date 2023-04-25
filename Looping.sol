//SPDX-License-Identifier: UNLICESED

pragma solidity > 0.7.0 < 0.9.0;

/*
 * Sample contract for primitive data types
 */

 contract Loping {
     uint public num;
    /*
    function loopThousandTimes() public returns (uint){
        for(num = 0; num < 10000; num++){
            num = num+1;
        }
        return num;
    }

    function areaOfSquare(uint _num) public payable returns(uint){
        for(_num; _num <= 1000; _num++){
            num = _num * _num;
            num += num;
        }
        return num;
    }
    */ 
    uint num1;
    uint num2;

    constructor(uint _num1, uint _num2) {
        num1 = _num1;
        num2 = _num2;
    }
    function purefunction(uint _a, uint _b) public pure returns(uint){
        uint c = _a + _b;
        return c;
    }

    function firstfunction() private view returns(uint) {
        return (num1 + num2);
    }

    function secondfunction() external view returns(uint) {
        uint num3 = firstfunction();
        //uint purenum = purefunction(4,5);
        return num3;
    }
    
 }