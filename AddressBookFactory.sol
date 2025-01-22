// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./AddressBook.sol";

contract AddressBookFactory {
    event AddressBookDeployed(address indexed owner, address addressBook);

    function deploy() external returns (address) {
        AddressBook addressBook = new AddressBook(msg.sender);
        emit AddressBookDeployed(msg.sender, address(addressBook));
        return address(addressBook);
    }
}
