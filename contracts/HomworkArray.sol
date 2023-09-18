// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract HomworkArray {

    // 상태 변수 선언
    uint[] public dynamic;

    // 함수
    function setDynamic(uint size) public {
        // 배열 생성
        dynamic = new uint[](size);

        // 배열 값 설정
        for (uint i = 0; i < size; i++) {
            dynamic[i] = i;
        }
    }

    function getDynamic() public view returns (uint[] memory) {
        // 배열 반환
        return dynamic;
    }
}
