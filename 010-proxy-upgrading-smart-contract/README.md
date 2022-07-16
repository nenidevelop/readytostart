# Proxy upgrading smart contract

This project demonstrates how to upgrade smart contract using a proxy.
We are going to use hardhat and openzeppelin on the network rinkeby.

First, we going to deploy the smart contract Box.sol with hardhat :

```shell
npx hardhat run .\scripts\deploy.js
```

The result will be :
```shell
Proxy of Box deployed to: 0x5863c292D51B06Ff7467c08b87de30E95DFd405b
```

And 3 contracts will be deployed :

- Box : https://rinkeby.etherscan.io/address/0x715a5f16681abbb4e060e3fac019ec9766e43888#code
- ProxyAdmin : https://rinkeby.etherscan.io/address/0xe03698d7c68ebd1ca491891de0b2ce97926e7ba7#code
- TransparentUpgradeableProxy : https://rinkeby.etherscan.io/address/0x5863c292d51b06ff7467c08b87de30e95dfd405b#code

By using the contract TransparentUpgradeableProxy , you could be able to point
to an upgradable contract, for example a new smart  contract BoxV2.sol.

Use these commands to interact into the network rinkeby : 

```shell
npx hardhat console --network rinkeby
const Box = await ethers.getContractFactory("Box")
const box = await Box.attach("0x5863c292D51B06Ff7467c08b87de30E95DFd405b")
(await box.retrieve()).toString() // display 42
```

Now we want to upgrade the smart contract Box.sol, with a new function increment()
that doesn't exist in version 1 but exist on BoxV2.sol 

So now, we run this command to deploy BoxV2.sol: 

```shell
npx hardhat run .\scripts\upgrade.js
```

This will create a new contract  BoxV2.sol : 
https://rinkeby.etherscan.io/address/0xa9fdc8ae2cbfe7a3839779350aa11c7ec789af54#code

Test the new contract BoxV2 : 
```shell
npx hardhat console --network rinkeby
const BoxV2 = await ethers.getContractFactory("BoxV2")
const boxV2 = await BoxV2.attach("0x5863c292D51B06Ff7467c08b87de30E95DFd405b") // address of TransparentUpgradeableProxy
(await boxV2.retrieve()).toString()  // will display 42
await boxV2.increment()              // new function available
(await boxV2.retrieve()).toString()  // will display 43
```

