const HelloWorldNFT = artifacts.require("HelloWorldNFT");

module.exports = function (deployer) {
  deployer.deploy(HelloWorldNFT);
};
