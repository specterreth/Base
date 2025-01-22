// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./Salaried.sol";
import "./Manager.sol";

contract EngineeringManager is Salaried, Manager {
    constructor(
        uint _idNumber,
        uint _managerId,
        uint _annualSalary
    )
        Salaried(_idNumber, _managerId, _annualSalary)
    {}

    // You can implement more specific functionality for EngineeringManager if needed
}
