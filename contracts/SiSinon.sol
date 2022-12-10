// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SiSinon {

    function LeMillion(uint x) public pure returns (bool) {
        if (x < 1000000) {
            return false;
        } else {
            return true;
        }
    }

    function LeChiffre(uint x) public pure returns (string memory) {
        if (x == 1) {
            return "un";
        } else if (x == 2) {
            return "deux";
        } else if (x == 3) {
            return "trois";
        } else if (x == 4) {
            return "quatre";
        } else if (x == 5) {
            return "cinq";
        } else if (x == 6) {
            return "six";
        } else if (x == 7) {
            return "sept";
        } else if (x == 8) {
            return "huit";
        } else if (x == 9) {
            return "neuf";
        } else return "C'est pas un chiffre, c'est un nombre";
    }

}