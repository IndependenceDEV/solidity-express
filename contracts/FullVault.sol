// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FullVault {

    mapping(address => uint) private balances;
    uint public totalDeposit;

    event Deposit(address from, uint256 amount);
    event Withdraw(address to, uint256 amount);

    receive() external payable {
        deposit();
    }

    function deposit() public payable {
        require(msg.value >= 1000000000000000000, "Minimum 1 Ether");
        balances[msg.sender] += msg.value;
        totalDeposit += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint256 _amount) public {
        require(_amount <= balances[msg.sender], "Wrong withdraw amount");
        balances[msg.sender] -= _amount;
        totalDeposit -= _amount;
        payable(msg.sender).transfer(_amount);
        emit Withdraw(msg.sender, _amount);
    }

    function getBalance() public view returns(uint)  {
        return balances[msg.sender];
    }
}