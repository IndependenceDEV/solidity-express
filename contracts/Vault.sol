// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Vault {

    mapping(address => uint) private balances;
    uint public totalDeposit;

    receive() external payable {
        deposit();
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;
        totalDeposit += msg.value;
    }

    function withdraw(uint256 _amount) public {
        require(_amount <= balances[msg.sender], "Wrong withdraw amount");
        balances[msg.sender] -= _amount;
        totalDeposit -= _amount;
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() public view returns(uint)  {
        return balances[msg.sender];
    }
}