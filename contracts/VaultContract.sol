// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

event DepositAdded (address indexed _depositor, uint256 indexed _deposited_amount);

contract VaultContract {
    mapping(address => uint256) deposits;
    address public contract_owner;

    constructor () {
        contract_owner = msg.sender;
    }


    function addDeposit (uint256 _amount) public {
        deposits[msg.sender] += _amount;
        emit DepositAdded(msg.sender, _amount);
    }


}
