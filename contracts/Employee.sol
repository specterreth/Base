// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

abstract contract Employee {
    uint public idNumber;
    uint public managerId;

    constructor(uint _idNumber, uint _managerId) {
        idNumber = _idNumber;
        managerId = _managerId;
    }

    // Virtual function to be overridden in derived contracts
    function getAnnualCost() public virtual view returns (uint);
}
