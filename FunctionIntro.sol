// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract FunctionIntro {

    // external -> can be called outside the contract
    // pure -> always returns the same output for same input
    //         and does not change anything in blockchain

    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    } 

    function sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }
}