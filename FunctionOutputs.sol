// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// ways we can return values from functions

contract FunctionOutputs {

    // returning more then one
    function returnMany() public pure returns (uint, bool) {
        return (1, true);
    }

    // returning more then one and named
    function named() public pure returns (uint x, bool b) {
        return (1, true);
    }

    // automatically returning named and saving gas
    function assigned() public pure returns (uint x, bool b) {
        x = 1;
        b = true;
    }

    // destructuring similar to JavaScript
    function destructuringAssignment() public pure {
        (uint x, bool b) = returnMany();

        // if we only want to use the 2nd one
        // we can leave first one empty
        (,bool _b) = returnMany();
    }

}