// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract StateVariable {

    // state variables are those which are declared inside the contract
    // and outside the functions
    // they are also stored on the blockchain 
    uint public aStateVarialbe = 123;


    function foo() external pure returns (uint) {
        // non state varialbe are those which are declared inside a function
        // they are created once the function starts to execute
        // and gone when function is done executing
        uint notStateVariable = 456;
        
        return notStateVariable;
    }
}