/**
 * @type import('hardhat/config').HardhatUserConfig
 */
require('@nomiclabs/hardhat-waffle');
require("hardhat-gas-reporter");


module.exports = {
  solidity: "0.8.9",
  gasReporter: {
    currency: 'USD',
    gasPrice: 21,
    enabled: true
  }
};
