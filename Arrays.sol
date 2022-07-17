// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Arrays {

    // There are two kinds of Array
    // Dynamic and Fixed
    // Dynamic arrays can be resized on demand
    // Fixed arrays can not be resized

    uint[] public dynamicArr = [1,2,3];

    // This is fixed array and length is predifined 3
    uint[3] public fixedArr = [1,2,3];

    function example() external {

        dynamicArr.push(4);
        uint x = dynamicArr[1];
        dynamicArr[2] = 777;
        delete dynamicArr[1];
        dynamicArr.pop();

        uint len = dynamicArr.length;

        // this is how we can create in memory array
        // they will be destroyed upon function exectuion complete
        uint[] memory a = new uint[](5);
        a[1] = 123; 

    }

    // returning array
    // memory tells that copy state varialbe to memory and return it
    // returning array is not recommended as it will use gas
    // the bigger and complex the array, the bigger the gas
    function returnArr() external view returns (uint[] memory) {
        return dynamicArr;
    }

}
