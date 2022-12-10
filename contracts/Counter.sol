// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter {
    uint private count;

    function increment() public {
        count += 1;
    }

    function decrement() public {
        count -= 1;
    }

    function incrementWith(uint number) public {
        count += number;
    }

    function get() public view returns (uint) {
        return count;
    }
}