// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract MarksManagmtSys{
    //structure of student records
    struct Student{
        bytes32 fName;
        bytes32 lName;
        uint ID;
        uint marks;
    }

    address owner;
    uint public studentCount = 0;
    mapping(uint => Student) public studentRecsMap;

    //function modifier
    modifier onlyOwner{
        require(owner == msg.sender);
        _;
    }

    constructor(){
        owner = msg.sender;
    }

    // add new student record
    function addNewRecord(bytes32 _fName, bytes32 _lName, uint _ID, uint _marks) public onlyOwner{
        studentCount += 1;
        studentRecsMap[studentCount] = Student(_fName, _lName, _ID, _marks);
    }

    function displayStudentMarks(uint stdNumber) public view returns(bytes32, uint){
        //require(studentRecsMap[stdNumber].ID == stdNumber, "The Student ID not listed");
        return (studentRecsMap[stdNumber].fName, studentRecsMap[stdNumber].marks);
    }

}

contract Mutex {
    bool locked;
    modifier noReentrancy() {
        require(
            !locked,
            "Reentrant call."
        );
        locked = true;
        _;
        locked = false;
    }

    /// This function is protected by a mutex, which means that
    /// reentrant calls from within `msg.sender.call` cannot call `f` again.
    /// The `return 7` statement assigns 7 to the return value but still
    /// executes the statement `locked = false` in the modifier.
    function f() public noReentrancy returns (uint) {
        (bool success,) = msg.sender.call("");
        require(success);
        return 7;
    }
}

/* When overriding a state variable use external to do that.
contract A
{
    function f() external view virtual returns(uint) { return 5; }
}

contract B is A
{
    uint public override f;
}
*/
