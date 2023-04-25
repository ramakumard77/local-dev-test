//SPDX-License-Identifier: UNLICESED
pragma solidity > 0.7.0 < 0.9.0;

/*
 * Sample contract for delegatecall
 * delegatecall is a low level function similar to call.
 * When a contract "ProxyContract" executes delegatecall to contract "UpgradeContract", 
 * UpgradeContract's code is executed with contract ProxyContract's storage, 
 * msg.sender and msg.value.
 */

// NOTE: Deploy this contract first - this is logic contract
contract UpgradeContract {
    // NOTE: storage layout must be the same as contract ProxyContract
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}

// NOTE: The below contract acts as proxy contract 
// where it will dynamically load the logic contract
contract ProxyContract {
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _contract, uint _num) public payable {
        // ProxyContract's storage is set, UpgradeContract is not modified.
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("setVars(uint256)", _num)
        );
    }
}