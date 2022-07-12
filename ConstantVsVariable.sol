// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// constants are used where we are sure the value will never change
// for example gas limit or receivers address etc.

// One benefit of using constant is that it uses less gas

// In Solidity Gas is a fee which is required to conduct a 
// transaction on the Ethereum blockchain. 

// gas is an execution fee used to compensate 
// miners for the computational resources required to power smart contracts. 

// The compiler does not reserve a storage slot for constants,
// and every occurrence is replaced by the respective value.
// So, Constant variables are replaced at compile time by their values


// constants will let the solidity compiler know about the future of that variable.

// Real World Example: Property prices

// if you know that the surrounding area of a property is going to develop (variable)
// its prices will increase
// whereas a property with no change in area (constant), the price will remain same or less

// execution cost: 21420 gas
contract Constant {
    address public constant constAddr = 0xBfAd8f7175E5a5A7d47bFaDBCE23791779Dab25f;
}

// execution cost: 130242 gas 
contract Variable {
    address public varAddr = 0xBfAd8f7175E5a5A7d47bFaDBCE23791779Dab25f;
}