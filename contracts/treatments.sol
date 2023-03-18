// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Treatments {

    struct Treatment {
        uint id;
        string name;
        string description;
        string startDate;
        string endDate;
        uint patientId;
    }

    mapping(address => Treatment[]) private treatments;

    function addTreatment(uint _id, string memory _name, string memory _description, string memory _startDate, string memory _endDate) public {
        Treatment memory newTreatment = Treatment(_id, _name, _description, _startDate, _endDate);
        treatments[msg.sender].push(newTreatment);
    }

    function getTreatments() public view returns (Treatment[] memory) {
        return treatments[msg.sender];
    }
}
