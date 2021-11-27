# react-solidity-kickstarter
https://www.kickstarter.com/ clone using ethereum-solidity and react

**Kickstarter Campaign as Smart Contract**

On kickstarter.com many projects will be active, which will raise funds from contributors to kickstart an interesting project. But, there is very less transparency, where in the idea person sometimes will misuse the contributions, without really spending on the project.

**react-solidity-kickstarter** tries to add more control and transparency to the kickstarter kind of problem using ethereum smart contracts.
* Idea person/Manager will create a Campaign
* Contributors will support the project with donations which will be credited to Campaign account on ethereum network.
* Manager will create spending requests with details about how the money will be spent along with recipient account address, who will recieve the money.
* contributors will approve the spending requests.
* Recipient will receive the money

**This is the companion repo to an Ethereum/Solidity course on [Udemy](https://www.udemy.com/ethereum-and-solidity-the-complete-developers-guide/)**

### Ethereum Tools/ JavaScript modules used:
* 'Solidity' - used to create Smart Contracts
* 'Remix - Solidity IDE' - online ide for creating, compiling and executing smart contracts in local, test or main network.
* 'MetaMask' - a chrome plugin, brings Ethereum dApps access to browser.
* 'solc' - Solidity compiler that generates Application Binary Interface(used as interface with Javascript appilcations) and Bytecode - that is deployed as a smart contract to an Ethereum network
* 'web3' - is the Ethereum compatible JavaScript API
* 'ganache' - local test ethereum network
* 'truffle' - provider for web3, to connect to test/main networks
* Rinkeby test network & Infura infrastructure
* React frontend

**[Metamask](https://metamask.io/) chrome plugin is mandatory while running this project. To create a campaign or add contributions to the campaign will send a transaction to ethereum network and approvals will go through Metamask**

**Start Development Server**
```
git clone https://github.com/nandral/react-solidity-kickstarter.git
cd react-solidity-kickstarter
npm install
npm start
```

**Informations**

- Need to create an infura project on https://infura.io
- Endpoint on rinkeby testnet
