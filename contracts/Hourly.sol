// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./Employee.sol";

contract Hourly is Employee {
    uint public hourlyRate;

    // Constructor that sets the hourly rate and calls the parent constructor
    constructor(uint _idNumber, uint _managerId, uint _hourlyRate)
        Employee(_idNumber, _managerId)
    {
        hourlyRate = _hourlyRate;
    }

    // Override the getAnnualCost function
    function getAnnualCost() public view override returns (uint) {
        return hourlyRate * 2080;  // 2080 hours in a year
    }
}
