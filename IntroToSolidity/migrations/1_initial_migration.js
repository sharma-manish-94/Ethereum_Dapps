const Migrations = artifacts.require("Migrations");
const SimpleStorage = artifacts.require("SimpleStorage");
const StorageFactory = artifacts.require("StorageFactory");
const Coin = artifacts.require("Coin");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(SimpleStorage);
  deployer.deploy(StorageFactory);
  deployer.deploy(Coin);
};
