// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract A {

    function f() public pure returns(uint, bool, uint) {
        return (7, true, 2);
    }

    function g() pure public returns(uint, bool, uint) {
        (uint x, bool y ,uint z) = f();
        (x, y, z) = (z, y, x); 
        return (x, y, z);
    } 
}