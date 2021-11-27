import web3 from "./web3";

import CampaignFactory from "./build/CampaignFactory.json";

// Address contracts deployed
const DEPLOYED_FACTORY_ADDRESS_ON_INFURA =
  "0x9C8a96780e839E4dd283b06Bcdc6d1Ff791d493D";

const instance = new web3.eth.Contract(
  JSON.parse(CampaignFactory.interface),
  DEPLOYED_FACTORY_ADDRESS_ON_INFURA
);

export default instance;
