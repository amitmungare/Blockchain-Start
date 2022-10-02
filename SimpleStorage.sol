// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // solidity version

contract SimpleStorage{
    // bool, uint, int,int256, string, address, bytes
    // public, private, external, internal
    // view -> to view 
    // pure -> just to read something
    // stack memory storage calldata code logs -> to store data

    // int number = 12;
    // string s = "one";
    // bool check = false;
    // address myAdress =0xaa4f76d0C5a9fe965612Ec1A4093745a2C05E208; 

    uint256  num;

    function store(uint256 _num)public virtual{
        num = _num;
    }

    function retrieve() public view returns(uint256){
        return num;
    }

    struct People{
        uint256 id;
        string name;
    }

    // array
    People[] public people;
    mapping(string => uint256)public map;

    function addPeople(string memory _name, uint256 _id)public{
        
        // People memory newPerson = People({id:_id, name:_name});
        // people.push(newPerson);

        people.push(People(_id, _name));
        map[_name] = _id;
    }

    

}