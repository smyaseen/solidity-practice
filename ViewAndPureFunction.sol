// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract ViewAndPureFunction {
    // view functions can read data from the blockchain, smartcontracts
    // pure functions do not read anything from blockchain, smartcontracts

    uint public num;

    // view func because returns a state variable
    function viewFunc() external view returns (uint) {
        return num;
    }

    // pure func because returns a local number and does not interact with blockchain or contract
    function pureFunc() external pure returns (uint) {
        return 1;
    }

    // view func because reads state variable
    function addToNum(uint x) external view returns (uint) {
        return num + x;
    }

    // pure func because does not rely on blockchain or contract, and only on local variables
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

}