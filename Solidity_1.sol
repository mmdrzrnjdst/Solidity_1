// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.13;

contract Solidity_1{

    struct iData{
        string Name;
        uint Age;
    }

    mapping(address => iData) private _idataUser;
    
    function ChangeName(string memory _Name, uint _Age) public{
        _idataUser[msg.sender].Name = _Name;
        _idataUser[msg.sender].Age = _Age;
    }

    function getName() public view returns(string memory){
        return _idataUser[msg.sender].Name;
    }

    function getAge() public view returns(uint){
        return _idataUser[msg.sender].Age;
    }
}
