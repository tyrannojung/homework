// SPDX-License-Identifier: onther
pragma solidity ^0.8.19;

import "./Add.sol";

contract ImportContract {
    Name public viewName = new Name();

    function viewNameFunction() public view returns (string memory){
        return viewName.name();
    }

    function addFunction(uint x, uint y)  pure public returns (uint){
        return add(x, y);
    }
}