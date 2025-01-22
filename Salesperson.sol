// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Hourly.sol";

contract Salesperson is Hourly {
    constructor(uint _hourlyRate, uint _idNumber, uint _managerId)
        Hourly(_idNumber, _managerId, _hourlyRate)
    {
    }
}
