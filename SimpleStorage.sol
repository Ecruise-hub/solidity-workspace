// SPDX-License-Identifier: MIT
pragma solidity 0.8.36;
contract SimpleStorage{
    // favoriteNumber gets initialized to zero
uint256 myfavoriteNumber; // which is automatically 0

struct Person {
    uint256 favoriteNumber;
    string name;
}

Person[] public listOfPeople;

mapping (string => uint256) public nameToFavoriteNumber;

function store(uint256 _favoriteNumber) public {
    myfavoriteNumber = _favoriteNumber; 
}

// view and pure 
function retrieve() public view returns(uint256){
    return myfavoriteNumber;
}

function addPerson(string memory _name, uint256 _favoriteNumber) public{
    listOfPeople.push(Person(_favoriteNumber, _name));
    nameToFavoriteNumber [_name]= _favoriteNumber;
} 
}
