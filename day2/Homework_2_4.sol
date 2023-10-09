// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title Tranfer, send 함수 만들기
/// @author dawoon jung
/// @notice trans & send function
contract HomeworkTransfer {

    /// @dev trans 함수
    /// @param _to the toAddress
    /// @param _amount the amount
    function trans(address payable _to, uint256 _amount) public payable {
        _to.transfer(_amount);
    }

    /// @dev send 함수
    /// @param _to the toAddress
    /// @param _amount amount
    function send(address payable _to, uint256 _amount) public payable returns (bool _value) {
        _value = _to.send(_amount);
    }
}
