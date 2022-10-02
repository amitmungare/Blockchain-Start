// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // solidity version

import "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public ssArray;

    function createSSC() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        ssArray.push(simpleStorage);
    }

    function sfStore(uint256 _ssIndex, uint256 _ssNumber) public {
         ssArray[_ssIndex].store(_ssNumber);
    }

    function sfGet(uint256 _ssIndex) public view returns(uint256){
        return ssArray[_ssIndex].retrieve();
    }

}