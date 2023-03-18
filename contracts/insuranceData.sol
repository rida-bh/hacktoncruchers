// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract InsuranceData {

    struct Insurance {
        uint id;
        string provider;
        uint policyNumber;
        string expirationDate;
        uint coverageLimit;
        uint patientId;
    }

    mapping(address => Insurance) private insuranceData;

    function addInsuranceData(uint _id, string memory _provider, uint _policyNumber, string memory _expirationDate, uint _coverageLimit) public {
        Insurance memory newInsurance = Insurance(_id, _provider, _policyNumber, _expirationDate, _coverageLimit);
        insuranceData[msg.sender] = newInsurance;
    }

    function getInsuranceData() public view returns (Insurance memory) {
        return insuranceData[msg.sender];
    }
}
