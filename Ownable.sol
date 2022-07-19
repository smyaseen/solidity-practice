// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// Example
// How we can set the owner of a contract

contract Ownable {
    address public owner;

    // initializing with the 
    // one address that deployed it
    constructor() {
        owner = msg.sender;
    }

    // a quick check to validate owner
    modifier isOwner() {
        require(msg.sender == owner, "!not owner");
        _;
    }

    // set new owner
    function setOwner(address _newOwner) external isOwner {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    // only owner will be able to call
    // due to isOwner custom check
    function onlyOwnerCanCall() external isOwner {
        // code
    }

    // anyone can call
    function anyOneCanCall() external {
        // code
    }
}