// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter {
    int public count;

    function get() public view returns(int){
        return count;
    }

    function incr() public{
        count += 1;
    }

    function decr() public{
        require(count > 0, "Count value should not less than zero");
        // assert(count < 0);
        count -= 1;
    }
}