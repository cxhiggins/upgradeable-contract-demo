// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract BoxV2 is Initializable {
  uint public width;
  uint public length;

  function initialize(uint _length, uint _width) public initializer {
    length = _length;
    width = _width;
  }

  function area() public view returns(uint) {
    return length * width;
  }

  function perimeter() public view returns(uint) {
    return length * 2 + width * 2;
  }

  function setLength(uint _length) public {
      length = _length;
  }

  function setWidth(uint _width) public {
      width = _width;
  }
}