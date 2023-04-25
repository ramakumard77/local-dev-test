//SPDX-License-Identifier: UNLICESED

pragma solidity > 0.7.0 < 0.9.0;

/*
 * Sample contract for primitive data types
 */

 contract PrimitiveDataTypes{
    uint public oneWei = 1 wei;
    uint public oneGwei = 1 gwei;
    uint public onEth = 1 ether;

    // 1 wei is equal to 1
    bool public isOneWei = 1 wei == 1;

    // 1 gwei is equal to 10^9 wei
    bool public isOneGwei = 1 gwei == 1e9;
    
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18;
 }