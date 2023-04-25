//SPDX-License-Identifier: UNLICESED

pragma solidity > 0.7.0 < 0.9.0;

contract SimpleContract {
    uint uiNum;
    string str;
    bool isCheck;
    address accAddr;

    function getuiNum() public view returns(uint) {
        return uiNum;
    }
    function setuiNum(uint _uiNum) public {
        uiNum = _uiNum;
    }

    function getStr() public view returns(string memory) {
        return str;
    }

    function setuStr(string memory _str) public {
        str = _str;
    }

    function getIsCheck() public view returns(bool ) {
        return isCheck;
    }

    function setIsCheck(bool _isCheck) public {
        isCheck = _isCheck;
    }

    function getAccAddr() public view returns(address ) {
        return accAddr;
    }

    function setAccAddr() public {
        accAddr = msg.sender;
    }

}