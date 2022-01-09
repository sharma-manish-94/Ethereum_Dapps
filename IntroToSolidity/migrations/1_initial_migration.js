const Migrations = artifacts.require("Migrations");
const SimpleStorage = artifacts.require("SimpleStorage");
const Coin = artifacts.require("Coin");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(SimpleStorage);
  deployer.deploy(Coin);
};
