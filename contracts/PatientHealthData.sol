pragma solidity ^0.8.0;

contract PatientHealthData {
    // Déclaration des variables
    mapping(uint => Patient) public patients;
    uint public patientsCount;

    // Définition de la structure Patient
    struct Patient {
        uint id;
        string name;
        string dob;
        string gender;
        string addresse;
        string phoneNumber;
        string email;
        uint[] medicalHistory;
        uint[] clinicalData;
        uint[] treatments;
        uint[] consultations;
        uint[] insuranceData;
        }

// Fonction pour ajouter un nouveau patient
function addPatient(string memory _name, string memory _dob, string memory _gender, string memory _address, string memory _phoneNumber, string memory _email) public {
patientsCount ++;
patients[patientsCount] = Patient(patientsCount, _name, _dob, _gender, _address, _phoneNumber, _email, new uint, new uint, new uint, new uint, new uint);
}

// Fonction pour ajouter de nouvelles données médicales à un patient existant
function addMedicalHistory(uint _patientId, uint _medicalHistoryId) public {
patients[_patientId].medicalHistory.push(_medicalHistoryId);
}

// Fonction pour ajouter de nouvelles données cliniques à un patient existant
function addClinicalData(uint _patientId, uint _clinicalDataId) public {
patients[_patientId].clinicalData.push(_clinicalDataId);
}

// Fonction pour ajouter de nouveaux traitements à un patient existant
function addTreatment(uint _patientId, uint _treatmentId) public {
patients[_patientId].treatments.push(_treatmentId);
}

// Fonction pour ajouter de nouvelles consultations à un patient existant
function addConsultation(uint _patientId, uint _consultationId) public {
patients[_patientId].consultations.push(_consultationId);
}

// Fonction pour ajouter de nouvelles données d'assurance-maladie à un patient existant
function addInsuranceData(uint _patientId, uint _insuranceDataId) public {
patients[_patientId].insuranceData.push(_insuranceDataId);
}
}
