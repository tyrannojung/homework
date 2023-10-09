// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title 4가지 visibility 사용 컨트랙트
/// @author dawoon jung
/// @notice function 4개 이상, onlyOwner modifier 추가
contract Visbility {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function publicFunction() public pure returns(string memory) {
        return "This is a public function";
    }

    function externalFunction() external pure returns(string memory) {
        return "This is an external function";
    }

    function internalFunction() internal pure returns(string memory) {
        return "This is an internal function";
    }

    function privateFunction() private pure returns(string memory) {
        return "This is a private function";
    }

    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}

/// @title 상속 포함 컨트랙트 
/// @author dawoon jung
/// @notice struct 타입 추가 & return function 만듬
contract DerivedContract is Visbility {

    struct HomeworkStruct {
        uint id;
        string name;
        string desc;
    }

    function callInternalFunction() public pure returns(string memory) {
        return internalFunction();
    }

    function getStruct() public pure returns (HomeworkStruct memory) {
        return HomeworkStruct(1, "DawoonJung", "student");
    }
}