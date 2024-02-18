// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Task {
    address public owner;
    uint256 public value;

    event ValueChanged(uint256 newValue);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    modifier validValue(uint256 _newValue) {
        require(_newValue > 0, "Value must be greater than zero");
        _;
    }

    function setValue(uint256 _newValue) external onlyOwner validValue(_newValue) {
        value = _newValue;
        emit ValueChanged(_newValue);
    }

    function getValue() external view returns (uint256) {
        return value;
    }

    function pureFunction(uint256 _a, uint256 _b) external pure returns (uint256) {
        return _a + _b;
    }

    function viewFunction(uint256 _c) external view returns (uint256) {
        return value + _c;
    }

    function assertFunction() external view {
        assert(value > 0);
    }

    function revertFunction() external pure {
        revert("This function intentionally reverts");
    }
}
