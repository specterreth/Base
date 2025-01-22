// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Manager {
    uint[] public employeeIds;

    // Function to add employee id to the reports list
    function addReport(uint _employeeId) public {
        employeeIds.push(_employeeId);
    }

    // Function to reset the reports list
    function resetReports() public {
        delete employeeIds;
    }
}
