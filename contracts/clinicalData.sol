// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MedicalHistory {

    struct MedicalRecord {
        uint id;
        string diagnosis;
        string treatment;
        string date;
    }

    mapping(address => MedicalRecord[]) private medicalHistories;

    function addMedicalRecord(uint _id, string memory _diagnosis, string memory _treatment, string memory _date) public {
        MedicalRecord memory newRecord = MedicalRecord(_id, _diagnosis, _treatment, _date);
        medicalHistories[msg.sender].push(newRecord);
    }

    function getMedicalHistory() public view returns (MedicalRecord[] memory) {
        return medicalHistories[msg.sender];
    }
}
