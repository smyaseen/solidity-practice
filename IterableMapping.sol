// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract IterableMapping {
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint _val) external {
        balances[_key] = _val;

        if (!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    modifier isEmpty() {
        require(keys.length > 0, "Balances Empty");
        _;
    }

    function getSize() external view returns (uint) {
        return keys.length;
    }

    function first() external view isEmpty returns (uint) {
        return balances[keys[0]];
    }

    function last() external view isEmpty returns (uint) {
        return balances[keys[keys.length - 1]];
    }

    function getByIndex(uint _index) external view returns (uint) {
        require(_index >= 0 && _index < keys.length, "Index out of Bounds");
        return balances[keys[_index]];
    }

    function getByAddress(address _requireAddrVal) external view returns (uint) {
        require(balances[_requireAddrVal] != 0, "Address not exists");
        return balances[_requireAddrVal];
    }




}