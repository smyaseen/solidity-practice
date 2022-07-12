// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// Data Types -> values and references

contract DataTypes {

    // a boolean variabl
    bool public b = true;

    // an unsigned variable
    // unsigned variables are positive intergers only
    uint public u = 123;

    // an integer varialbe
    int public i = -123;

    // finding the max and min int value using type function
    // type function takes a datatype and gives some prototypes we can use
    // like min and max
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // this is how an address is stored
    address public addr = 0xBfAd8f7175E5a5A7d47bFaDBCE23791779Dab25f;

    // this is how a 32 bytes addresss is stored 
    bytes32 public b32 = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733cCE23791779Dab25CE2379178;

}