// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Employee.sol";

contract Hourly is Employee {
    uint public hourlyRate;

    constructor(uint _idNumber, uint _managerId, uint _hourlyRate)
        Employee(_idNumber, _managerId)
    {
        hourlyRate = _hourlyRate;
    }

    function getAnnualCost() public view override returns (uint) {
        // 2080 hours per year (40 hours/week * 52 weeks)
        return hourlyRate * 2080;
    }
}
