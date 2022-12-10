// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ArrayStorageStruct {

    struct AmazingNote {
        string note;
        address author;
    }

    AmazingNote[] private allNote;

    function setNote(string memory _note) public {
        AmazingNote memory myAmazingNote = AmazingNote(_note, msg.sender);
        allNote.push(myAmazingNote);
    }

    function getNote(uint i) public view returns (AmazingNote memory) {
        return allNote[i];
    }
}