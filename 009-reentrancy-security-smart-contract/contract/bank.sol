pragma solidity >=0.7.0 <0.9.0;
import "hardhat/console.sol";

contract Bank {

    mapping(address => uint) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() public {
        uint bal = balances[msg.sender];
        require(bal > 0);
        (bool sent, ) = msg.sender.call{value: bal}("");
        require(sent, "Failed to send Ether");
        
        // this line have to be before the function msg.sender.call
        balances[msg.sender] = 0;

    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }


}