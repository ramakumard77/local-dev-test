//SPDX-License-Identifier: UNLICESED
pragma solidity > 0.7.0 < 0.9.0;

/*
 * Sample contract for implementing the fallback payable functionality
 */

contract FallbackPayable{

    uint a;
    uint b;

    fallback() external payable{
        a = 1;
        b = msg.value;
    }
    
}

contract Caller {
    function callFallbackPayable(FallbackPayable fbpcontract) public returns (bool) {
        (bool success,) = address(fbpcontract).call(abi.encodeWithSignature("nonExistingFunction()"));
        require(success);
        // results in fbpcontract.x becoming == 1 and fbpcontract.y becoming 0.
        (success,) = address(fbpcontract).call{value: 1}(abi.encodeWithSignature("nonExistingFunction()"));
        require(success);
        // results in fbpcontract.x becoming == 1 and fbpcontract.y becoming 1.

        // If someone sends Ether to that contract, the receive function in TestPayable will be called.
        // Since that function writes to storage, it takes more gas than is available with a
        // simple ``send`` or ``transfer``. Because of that, we have to use a low-level call.
        (success,) = address(fbpcontract).call{value: 2 ether}("");
        require(success);
        // results in test.x becoming == 2 and test.y becoming 2 ether.

        return true;
    }
}