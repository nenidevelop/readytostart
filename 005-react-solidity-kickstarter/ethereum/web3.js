import Web3 from "web3";
// BEFORE : https://rinkeby.infura.io/v3/91a49c8a855943b3914cee79f438a081
// AFTER :  https://rinkeby.infura.io/v3/555ef56343a944ac9fbc6bb6475c184a
const INFURA_URL =
  "https://rinkeby.infura.io/v3/555ef56343a944ac9fbc6bb6475c184a";
let web3;

if (typeof window !== "undefined" && typeof window.web3 !== "undefined") {
  // We are in the browser and metamask is running.
  web3 = new Web3(window.web3.currentProvider);
} else {
  // We are on the server *OR* the user is not running metamask
  const provider = new Web3.providers.HttpProvider(INFURA_URL);
  web3 = new Web3(provider);
}

export default web3;
