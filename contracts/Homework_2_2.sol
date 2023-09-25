// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title tx.origin, msg.sender 비교하기
/// @author dawoon jung
/// @notice contract A
contract ContractA {
    
    /// @dev msg. sender 확인
    function msgCall() public view returns(address) {
        address callAddress = msg.sender;
        return callAddress;
    }

    /// @dev msg.sender 와 tx.origin이 다른걸 확인할 수 있다.
    function txCall() public returns(address, address) {
        ContractB contractb = new ContractB();
        return contractb.getContractA();
    }

}

/// @notice contract B
contract ContractB {
    
    ///@dev contract A가 호출했을때 msg.sender는 ContractA address이다.
    function getContractA() public view returns(address, address) {
        return (msg.sender, tx.origin);
    }
}
