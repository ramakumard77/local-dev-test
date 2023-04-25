//SPDX-License-Identifier: UNLICESED
pragma solidity > 0.7.0 < 0.9.0;

/*
 * Sample contract for types of memory locations
 */

contract MemoryTypes {

    struct Student{
        uint id;
        uint marks;
        string name;
    }

    Student[] studentArray;

    function insertStudentRecord(uint _id, uint _marks, string memory _studentName) public {
        studentArray.push();

        uint index = studentArray.length - 1;
        studentArray[index].id = _id;
        studentArray[index].marks = _marks;
        studentArray[index].name = _studentName;

    }
}