// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Boucle {

    function loop(uint number, string memory letter) public view returns (string memory) {
        string memory word;
        for (uint i = 0; i < number; i++) {
            word = string.concat(word,letter);
        }
        return word;
    }
}