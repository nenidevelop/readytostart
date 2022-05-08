# Debug on Visual Studio Code with metamask/truffle  : 


1. Install the extension Truffle for VSCode
2. Create a new project

```
- Open command palette ctl+shift+P
- truffle: New solidity project 
```

3. Compile your contract
```
- Click right and compile
```

4. Deploy you contract
```
- Click right and deploy
```

5. Install localtunnel
Localtunnel is used to tunneling to local HTTPS server.
Metamask doesn't allow to use the url with HTTP like RPC Url default of truffle : http://127.0.0.1:9545/

Maybe you will need localtunnel in order to got a HTTPS URL

https://www.npmjs.com/package/localtunnel
```
npm install -g localtunnel
```
and after use the command line interface to request a tunnel to your local server:
```
lt --port 9545
```

An url will be created (ex: https://wise-mule-dig-195-131-122-13.loca.lt/) Open the url created and click on the button "Click to continue"

After you can used this new url instead of http://127.0.0.1:9545/

6. Configure metamask

Add a new development network :
For the RPC url, you can add the URL generated before with localtunnel 

```
RPC :   https://better-crabs-dig-195-200-221-57.loca.lt/
CHAIN : 1337
SYMBOLE : ETH
```

7. Now you can call transactions on your contract deployed with truffle.

With truffle, you can interact with your contract 

```
let instance = await YourNameContract.deployed()
instance.buy('0xa281de08ee8512075b29cda76763efad2b92f985', {value: 2000000000000000000})
```

8. Debug your transaction

```
- Open command palette ctl+shift+P
- truffle: Debug transaction
```

You will be able to see all your transactions and debug into the smart contract