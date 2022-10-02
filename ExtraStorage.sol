// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // solidity version

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage{

    function store(uint256 _num) public override {
         num = _num+5;
    }

}