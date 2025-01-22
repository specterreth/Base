// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./Employee.sol";

contract Salaried is Employee {
    uint public annualSalary;

    // Constructor that sets the salary and calls the parent constructor
    constructor(uint _idNumber, uint _managerId, uint _annualSalary)
        Employee(_idNumber, _managerId)
    {
        annualSalary = _annualSalary;
    }

    // Override the getAnnualCost function
    function getAnnualCost() public view override returns (uint) {
        return annualSalary;
    }
}
