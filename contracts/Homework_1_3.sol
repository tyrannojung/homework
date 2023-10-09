// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract A {

    function f(uint a, uint b) public pure returns(uint) {
        unchecked{ return a - b ; } // wrap을 시키는것
    }

    function g(uint a, uint b) public pure returns(uint) {
        return a - b;
    }
}