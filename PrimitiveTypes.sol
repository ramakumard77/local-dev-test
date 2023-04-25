// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PrimitiveTypes {
    bool public boo = true;

    /*
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available
        uint8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
    */
    uint8 u8 = 1;
    uint public u256 = 456;
    uint public u = 123; // uint is an alias for uint256

    /*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256
    
    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123; // int is same as int256

    // minimum and maximum of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public constant addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
    address public addr1 = 0x5aAeb6053F3E94C9b9A09f33669435E7Ef1BeAed;
    
    /*
    In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two type of bytes types :

     - fixed-sized byte arrays
     - dynamically-sized byte arrays.
     
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
    */
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000

    string public constant MY_ADDR = '1234';
    
    constructor() {
        //MY_ADDR = '0x1234';
    }

    // You need to send a transaction to write to a state variable.
    function set(uint _defaultUint) public {
        defaultUint = _defaultUint;
    }

    function get() public view returns(uint){
        return defaultUint;
    }

    //MAP
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function getNestedMap(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_i];
    }

    function setNestedMap(address _addr1, uint _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function removeNestedMap(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }

    // Map - Single map
    mapping(address => uint) public myMap;

    function getMyMap(address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function setMyMap(address _addr1, uint _i) public {
        // Update the value at this address
        myMap[_addr1] = _i;
    }

    function removeMyMap(address _addr) public {
        // Reset the value to the default value.
        delete myMap[_addr];
    }

    //Defining structure
    struct Student 
    {
        // Declaring different 
        // structure elements
        string name;
        string subject;
        uint8 marks;
    }
      
    // Creating a mapping
    mapping (address => Student) public result;
    address[] public student_result;  
    
    function createStructure() public payable {
        Student memory studentno1;
        studentno1.name = "Ram";
        studentno1.subject = "Telugu";
        studentno1.marks = 70;
        result[addr] = studentno1;
    }
    


}