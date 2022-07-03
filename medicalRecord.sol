// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0<0.9.0;

contract medicalRecord {

    uint idDigits = 6;

    struct Patient {
        uint id;
        string name;
        string gender;
        string illness;
        string surgery;
    }

    Patient[] public patients;

    //Adding the details of new patients
    function addPatient(uint id,
    string memory name,
    string memory gender,
    string memory illness,
    string memory surgery) public{
        Patient memory p = Patient(id, name, gender, illness, surgery);
        patients.push(p);
    }
    
    //Accessing the patients using their ids
    function accessPatient(uint id)  public view returns(string memory,
    string memory, string memory, string memory){
        for (uint i = 0; i<=patients.length; i++){
            Patient memory p = patients[i];
            if (p.id == id){
                return( p.name, p.gender, p.illness, p.surgery);
            }
        }
        return("Not found", "Not found", "Not found", "Not found");
    }
}

