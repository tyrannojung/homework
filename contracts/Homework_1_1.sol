// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract A {
    function b() pure public {
        {
            uint x;
            x = 1;
        }

        {
            uint x;
            x = 3;

        }
    }

    function c() pure public returns (uint) {
        uint x = 1;
        {
            x = 2;
        }
        return x; 
    }

    function d() pure public returns (uint) {
        uint x;
        x = 2;
        return x;
    }
}