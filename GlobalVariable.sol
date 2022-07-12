// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract GlobalVariable {

// Global variables store information such as
// blockchain
// transaction
// account that calls the function
// and some more

    function globalVars() external view returns (address,uint,uint) {

        // msg.sender stores the address of whoever calls the func
        address sender = msg.sender;

        // the unix timestamp when the transaction occured
        uint timestamp = block.timestamp;

        // the block number in the blockchain
        uint blockNumber = block.number;

        return (sender,timestamp, blockNumber);
    }
}