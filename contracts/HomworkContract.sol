// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract HomworkContract {
    //uint256 타입의 변수 선언
    uint256 public a;
    
    //view = read-only & 내-외부 호출이 가능 상속 호출이 가능한 접근 제어자 = view
    function createContract() public view returns (uint256) {
        return a;
    }
}
