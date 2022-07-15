// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Errors {
    
    // three ways to check for errors
    // require, revert and assert

    // use require for simple checks like these
    function testRequire(uint i) public pure {
        require(i <= 10, "i > 10");
        // rest of the code
    }

    // use revert if the code is nested inside
    function testRevert(uint i) public pure {
        if (i > 10) {
            revert("i > 10");
        }
    } 

    uint public num = 123;

    // use assert for things which should always be true
    function testAssert() public view {
        assert(num == 123);
    }

    // modifying num, which in case when testAssert gets called
    // it throws error
    function foo (uint i) public {
        num += 1;
        require(i < num);
    }

    // custom error to save gases
    error MyError(address caller, uint i);

    // throwing custom error to save gas
    function testCustomError(uint i) public view {
        if (i > 10) {
            revert MyError(msg.sender, i);
        }
    }
}