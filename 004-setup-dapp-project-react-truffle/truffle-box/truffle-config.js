const HDWalletProvider = require('@truffle/hdwallet-provider');
const mnemonic = 'violin scale cactus rifle draw soda fault invite whale fault gesture about';

const path = require("path");

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  contracts_build_directory: path.join(__dirname, "client/src/contracts"),
  networks: {
    develop: {
      port: 8545
    },
    ganache: {
      provider: () => new HDWalletProvider(
        mnemonic, 
        'HTTP://127.0.0.1:7545'
      ),
      network_id: 5777,
      skipDryRun: true
    }
  }
};
