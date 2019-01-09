var MassSender = artifacts.require("MassSender");

var keys = require('../keys');

module.exports = function(deployer)
{
	deployer.deploy(MassSender, {gas: 4200000, from: keys.owner});
}


