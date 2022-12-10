// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ArrayStorage {

    string[] private allNote;

    function setNote(string memory _note) public {
        allNote.push(_note);
    }

    function getNote(uint i) public view returns (string memory) {
        return allNote[i];
    }
}