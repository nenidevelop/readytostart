// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

interface ITestContract {
  function getX() external view returns (uint x);
  function setX(uint _x) external;
  function setXandReceiveEther(uint _x) external payable;
  function getXandValue() external view returns (uint, uint);
}

pragma solidity ^0.8.3;

contract CallTestContract {

    ITestContract public testContract;

    function setContracts(address _testContract) external {
        testContract = ITestContract(_testContract);
    }


    function setX(uint _x) external {
        testContract.setX(_x);
    }

    function getX() external view returns (uint x) {
        x = testContract.getX();
    }

    function setXandSendEther(uint _x) external payable {
        testContract.setXandReceiveEther{value: msg.value}(_x);
    }

    function getXandValue() external view returns (uint x, uint value) {
        (x, value) = testContract.getXandValue();
    }

}

