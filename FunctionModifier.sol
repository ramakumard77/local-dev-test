//SPDX-License-Identifier: UNLICESED

pragma solidity > 0.7.0 < 0.9.0;

contract FunctionModifier {
    uint uiNum;
    address accAddr;
 
    constructor() {
        accAddr = msg.sender;
    }

    modifier OnlyOwner{
        require(accAddr == msg.sender, "Only Account Holder has access.");
        _;
    }
    
    function setuiNum(uint _uiNum) public OnlyOwner{
        uiNum = _uiNum;
    }
    function getuiNum() public view returns(uint) {
        return uiNum;
    }
}