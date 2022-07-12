// SPDX-License-Identifier: MIT

// The above code defines a license
// since smart contracts are distributed oriented and opensource
// they need a license
// It is optional, but compiler throws a warning


// Telling the compiler the version of solidity used
// solidity is evolving quickly, some new changes breaks older code
// so specifying version helps in running everything as expected
pragma solidity 0.8.7;


// contract is like class in object oriented
// HelloWorld is the name of contract
contract HelloWorld {

// datatype access_modifier variable_name = some_value
    string public greet = "Hello, World!";
}