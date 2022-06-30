# Reentrancy security smart contract 

Here a simple example of a single function reentrancy.

We have 2 contracts : bank.sol and thief.sol

The contract bank.sol have the function withdraw()

```
function withdraw() public {
        uint bal = balances[msg.sender];
        require(bal > 0);
        (bool sent, ) = msg.sender.call{value: bal}("");
        require(sent, "Failed to send Ether");
        
        // this line have to be before the function msg.sender.call
        balances[msg.sender] = 0;
}
```

We can see that we reset the balances of the msg.sender after the call function.

Or when we call the function 
```
msg.sender.call{value: bal}("");
```

The fallback function from the contract thief.sol 
is called recursively until the bank got less than 1 ether. 

```
fallback() external payable {
        if (address(bank).balance >= 1 ether) {
            bank.withdraw();
        }
}
```

To secure the bank contract we can use a security practice from openzeppelin like : 

 [ReentrancyGuard](https://docs.openzeppelin.com/contracts/4.x/api/security#ReentrancyGuard) : A modifier that can prevent reentrancy during certain functions.

