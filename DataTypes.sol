// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// Data Types -> values - references

contract DataTypes {
    bool public b = true;
    uint public u = 123;

    int public i = -123;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0xBfAd8f7175E5a5A7d47bFaDBCE23791779Dab25f;
    bytes32 public b32 = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733cCE23791779Dab25CE2379178;

}