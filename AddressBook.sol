// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";

contract AddressBook is Ownable {
    struct Contact {
        uint id;
        string firstName;
        string lastName;
        uint[] phoneNumbers;
    }

    mapping(uint => Contact) private contacts;
    uint private contactCount;

    error ContactNotFound(uint id);

    constructor(address initialOwner) Ownable(initialOwner) {
        // Owner is set via the Ownable constructor.
    }

    function addContact(
        string memory _firstName,
        string memory _lastName,
        uint[] memory _phoneNumbers
    ) public onlyOwner {
        contacts[contactCount] = Contact(contactCount, _firstName, _lastName, _phoneNumbers);
        contactCount++;
    }

    function deleteContact(uint _id) public onlyOwner {
        if (_id >= contactCount || contacts[_id].id != _id) {
            revert ContactNotFound(_id);
        }
        delete contacts[_id];
    }

    function getContact(uint _id) public view returns (Contact memory) {
        if (_id >= contactCount || contacts[_id].id != _id) {
            revert ContactNotFound(_id);
        }
        return contacts[_id];
    }

    function getAllContacts() public view returns (Contact[] memory) {
        Contact[] memory allContacts = new Contact[](contactCount);
        uint counter = 0;
        for (uint i = 0; i < contactCount; i++) {
            if (contacts[i].id == i) {
                allContacts[counter] = contacts[i];
                counter++;
            }
        }
        return allContacts;
    }
}
