//SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract HelloWorld {
    string public name;
    string public helloPrefix = "Hello ";

    constructor(string memory initialName){
        name = initialName;
    }

    function setName(string memory newName) public {
        name = newName;
    }

    function getHello()public view returns (string memory){
        return string(abi.encodePacked(helloPrefix, name));
    }
}
