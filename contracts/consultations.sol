// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Consultations {

    struct Consultation {
        uint id;
        string date;
        string doctorName;
        string diagnosis;
        string prescription;
        uint patientId;
    }

    mapping(address => Consultation[]) private consultations;

    function addConsultation(uint _id, string memory _date, string memory _doctorName, string memory _diagnosis, string memory _prescription) public {
        Consultation memory newConsultation = Consultation(_id, _date, _doctorName, _diagnosis, _prescription);
        consultations[msg.sender].push(newConsultation);
    }

    function getConsultations() public view returns (Consultation[] memory) {
        return consultations[msg.sender];
    }
}
