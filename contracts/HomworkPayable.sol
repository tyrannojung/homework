// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract HomworkPayable {

    // 상태 변수
    uint256 public walletBalance;

    // 초기잔고 설정
    constructor() {
        walletBalance = 0;
    }

    // payable 함수의 선언
    function addFunds() public payable {
        // 전달된 ETH를 저장
        walletBalance = walletBalance + msg.value;
    }
}
