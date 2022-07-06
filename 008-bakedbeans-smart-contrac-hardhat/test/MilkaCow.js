const { expect } = require('chai');
const { ethers } = require("hardhat");
const { isCallTrace } = require('hardhat/internal/hardhat-network/stack-traces/message-trace');

describe('Bakedbeans contract', () => {

    let MilkaCow, milkaCow, owner, addr1, addr2;

    beforeEach(async () => {
        MilkaCow = await ethers.getContractFactory('MilkaCow');
        milkaCow = await MilkaCow.deploy();
        [owner, addr1, addr2, _] = await ethers.getSigners();
    });


    describe('Deployment', () => {
        it('Sould set the right owner', async () => {
            expect(await milkaCow.owner()).to.equal(owner.address);
        });
    })


    describe('Transaction buy', () => {
        it('Sould buy milk to contract', async () => {

            await milkaCow.openMilk();
            await milkaCow.buyMilk('0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266', {
                value: ethers.utils.parseEther("10") });

            let contractBalance = await milkaCow.getBalance();

            expect(ethers.utils.formatEther(contractBalance)).to.equal("9.0");
        });
    })

    
    describe('Transaction withdraw', () => {
        it('Sould withdraw milk to contract', async () => {
            await milkaCow.openMilk();
            await milkaCow.buyMilk('0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266', {
                value: ethers.utils.parseEther("10") });
            await milkaCow.sellMilk();

            let contractBalance = await milkaCow.getBalance();            
            let contractBalanceFormat = ethers.utils.formatEther(contractBalance);
            
            expect(Math.round(parseFloat(contractBalanceFormat))).to.equal(9);
        });
    })


    describe('Transaction compound', () => {
        it('Sould compound milk to contract', async () => {
            await milkaCow.openMilk();
            await milkaCow.buyMilk('0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266', {
                value: ethers.utils.parseEther("10") });
            await milkaCow.drinkMilk('0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266');

            let contractBalance = await milkaCow.getBalance();
            
            let contractBalanceEth = ethers.utils.formatEther(contractBalance);
            

            expect(Math.round(parseFloat(contractBalanceEth))).to.equal(9);
        });
    })

});


