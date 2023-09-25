// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title gasleft 사용 mapping 가스비 변환 확인
/// @author dawoon jung
/// @notice public키를 통한 string저장 컨트랙트
contract HomeworkGasLeft {
    
    /// @dev key : public key, value : backupdata
    mapping(address => string) private userBackupMap;

    /// @dev 백업 데이터 저장 함수
    /// @param _key the public key
    /// @param _backup the backup data
    function setBackupData(address _key, string memory _backup) external returns (uint, uint) {
        uint startGas = gasleft();
        userBackupMap[_key] = _backup;
        uint endGas = gasleft();
        return(startGas , endGas);
    }
}
