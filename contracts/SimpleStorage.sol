// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleStorage {
    address private lastCaller;
    string private lastNote;

    constructor(string memory _note) {
        lastCaller = msg.sender;
        lastNote = _note;
    }

    function setNote(string memory _note) public {
        lastCaller = msg.sender;
        lastNote = _note;
    }

    function getLastNote() public view returns (string memory) {
        return lastNote;
    }

    function getLastCaller() public view returns (address) {
        return lastCaller;
    }

}
