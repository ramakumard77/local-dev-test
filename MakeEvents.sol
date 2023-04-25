//SPDX-License-Identifier: UNLICESED
pragma solidity > 0.7.0 < 0.9.0;

/*
 * Sample contract for events
 */

contract MakeEvents {
    // Event declaration
    // Up to 3 parameters can be indexed.
    // Indexed parameters helps you filter the logs by the indexed parameter
    event messLog(address indexed sender, string message);
    event messLog1(string name, string message);
    event messLog2();

    function test() public {
        emit messLog(msg.sender, "Hello World!");
        emit messLog1('TestEvent', "Hello EVM!");
        emit messLog2();
    }
}