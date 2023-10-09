// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

library SafeMath {
    function add(uint8 a, uint8 b) internal pure returns (uint8) {
        require(a + b >= a, "SafeMath: addition overflow");
        return a + b;
    }

    function sub(uint8 a, uint8 b) internal pure returns (uint8) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }
}

contract LibraryEx {
    using SafeMath for uint8;
    uint8 public a;

    function overflow(uint8 _num1, uint8 _num2) public returns (uint8) {
        a = _num1.add(_num2);
        return a;
    }

    function underflow(uint8 _num1, uint8 _num2) public returns (uint8) {
        a = _num1.sub(_num2);
        return a;
    }
}