// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// Modifier are like functions
// except they help in extending function capabilities 
// and also for code reuse


contract FunctionModifier {
    bool public paused;
    uint public count;

    // set the pause to given parameter
    function setPause(bool _paused) external {
        paused = _paused;
    }

    // a modifier to check if not paused else throw error
    modifier whenNotPaused() {
        require(!paused, "paused");
        // _; tells the compiler to execute rest
        // of the functions code
        _;
    }

    // passed a modifier which will check of !paused
    // and continue rest of the code 
    function inc() external whenNotPaused {
        count++;
    }

    // passed a modifier which will check of !paused
    // and continue rest of the code 
    function dec() external whenNotPaused {
        count--;
    }

    // this modifier takes a parameter
    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        _;
    }

    // so you can have multiple parameters
    // first one check for pause
    // second one for parameter limit
    function incBy(uint _x) external whenNotPaused cap(_x) {
        count += _x;
    }

    // as the name sandwich
    modifier sandwich() {
        // code here
        count += 10;
        // continue rest of the functions code
        _;
        // in the end do this logic
        count *= 2;
    }

    // demonstration of sandwich modifier
    function foo() external sandwich {
        count += 1;
    }


}