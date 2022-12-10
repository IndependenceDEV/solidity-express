// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Whitelist {

    mapping(address => bool) whitelistedAddresses;

    function addAddress(address _addressToWhitelist) public {
        whitelistedAddresses[_addressToWhitelist] = true;
    }

    function verifyAddress(address _whitelistedAddress) public view returns(bool) {
        if(whitelistedAddresses[_whitelistedAddress]) return true;
        else return false;
    }
}