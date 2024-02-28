// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract FuncIntro{
     function add(uint a, uint b) external pure returns(uint){
        return a + b;
     }

    function sub(uint a, uint b) external pure returns(uint){
        return a - b;
    }
}
