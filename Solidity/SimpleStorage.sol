// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{

uint256 public FavNum;
mapping(string => uint256) public nameToFavNum ;

struct People {
uint256 FavNum;
string name;
}

People[] public people;//dynamic array
function store(uint256 _FavNum) public virtual {
    FavNum=_FavNum;
}



function retrive() public view returns (uint256) {
    return FavNum;
 }
 function AddPerson(string memory _name, uint256 _FavNum)public{

People memory newPerson=People({FavNum:_FavNum, name: _name});

people.push(newPerson);
nameToFavNum[_name]= _FavNum;
 }
}