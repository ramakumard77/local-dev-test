//SPDX-License-Identifier: UNLICESED
pragma solidity > 0.7.0 < 0.9.0;

/*
 * Sample contract for abstract contract and interface
 */


contract abstractContract{
    uint256 public age;

    constructor(uint256 _age){
        age = _age;
    }

    function getAge() public virtual view returns (uint256){
        return age;
    }
    function setAge(uint256 _age) public virtual {}
    function makeMeSayHello() public pure returns (string memory) 
    {
        return "Hello";
    }
}

interface InterfaceHandler {
    function getName() external view returns (string memory);
    function setName(string memory _name) external;
}


contract Caller is InterfaceHandler, abstractContract {
    string name;
    
    constructor(string memory _name, uint256 _age) abstractContract(_age){
        name = _name;
    }
    
    function getAge() public override view returns(uint256){
        return age;
    }

    function setAge(uint256 _age) public override {
        age = _age;
    }

    function getName() public view override returns(string memory) {
        return name;
    }
    function setName(string memory _name) public override {
        name = _name;
    }
}
