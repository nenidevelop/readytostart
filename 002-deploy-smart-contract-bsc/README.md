## Deploy smart contract


### Local deployment
Deploy smart contract locally blockchain.

Truffle command :

```
truffle develop
```

Deploy smart contract o, develop network

```
migrate --reset
```

### Testnet deployment
Deploy to the public testnet on binance chain

1. Need a testnet bnb token : select an account from the command truffle develop
```
truffle develop
```

2. Got to https://testnet.binance.org/faucet-smart
And paste the adresss

3. Verify your adress on bscan testenet : 
https://testnet.bscscan.com/address/0xd9ef5c8157322b93e6c8cac5fd72b8aa4f6bd99e

4. Edit truffle-config.js 
- Copy the Mnemonic phrase on the file truffle-config.js (line 1)
- Check the provider bscTestnet

5. Run the migration for binance smart chaine testnet
```
truffle migrate --reset --network bscTestnet

```

### Mainnet deployment
1. Edit truffle-config.js 
    - check the configuration for provider bsc

2. Deploy on main binance smart chain
```
truffle migrate --reset --network bsc
```


### Other informations

- Netlify to deploy static front ends easily




