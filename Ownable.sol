// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == owner, "!not owner");
        _;
    }

    function setOwner(address _newOwner) external isOwner {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    function onlyOwnerCanCall() external isOwner {
        // code
    }

    function anyOneCanCall() external {
        // code
    }


}