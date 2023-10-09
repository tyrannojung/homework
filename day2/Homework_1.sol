// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title storage memory calldata 명시적 사용
/// @author dawoon jung
/// @notice 메인지갑을 기준으로 서브지갑을 추가하는 컨트랙트
contract MyWalletStorage {

    struct Member {
        string name;
        string desc;
        bool isActive;
        address mainAddress;
        address[] subWalletList;
    }

    /// @dev id를 통한 맴버 접근
    mapping (uint256 => Member) public members;

    /// @dev id와 계약 실행자 오너 체크
    /// @param _userIndex the userId
    modifier onlyOwner(uint256 _userIndex) {
        require(msg.sender == members[_userIndex].mainAddress);
        _;
    }

    /// @dev user id 부여
    uint256 public nextUserIndex = 0;

    /// @dev 오너 이름 확인 함수, memory 활용
    /// @param _userIndex the userId
    function checkOwnerName(uint256 _userIndex) external view returns(string memory) {
        return members[_userIndex].name;
    }

    /// @dev 맴버 생성 함수, calldata 활용
    /// @param _name the userName
    /// @param _desc the userDesc
    /// @param _isActive the userActive
    function createMember(string calldata _name, string calldata _desc, bool _isActive) internal {
        members[nextUserIndex] = Member(_name, _desc, _isActive, msg.sender, new address[](0));
        nextUserIndex ++;
    }

    /// @dev 유저 서브지갑 추가 함수
    /// @param _userIndex the userId
    /// @param _userAddress the userAddress
    function addWallet(uint256 _userIndex, address _userAddress) internal onlyOwner(_userIndex){
        require(members[_userIndex].isActive);
        Member storage member = members[_userIndex];
        member.subWalletList.push(_userAddress);
    }


}