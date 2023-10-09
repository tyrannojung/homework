// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title function selector & call
/// @author dawoon jung
/// @notice sigModular 함수 signature활용
contract HomeworkSig {
    bytes4 public signature;
    uint public modular; 

    /// @dev msg.sig를 signature 에 저장
    /// @param _paramA the argument1
    /// @param _paramB the argument2
    function sigModular(uint256 _paramA, uint256 _paramB) private {
        modular = _paramA % _paramB;
        signature = msg.sig;
    }

    /// @dev sigModular 함수에서 signature 값을 사용하여 함수 시그니처 생성
    /// @param _paramA the argument1
    /// @param _paramB the argument2
    function callFunction(uint256 _paramA, uint256 _paramB) public returns (uint256) {
        bytes memory _sig = abi.encodeWithSelector(signature, _paramA, _paramB);
        (bool success, bytes memory data) = address(this).call(_sig);
        return success ? abi.decode(data,(uint256)) : 0;
    }
}
