var HDWalletProvider = require('truffle-hdwallet-provider');

var keys = require('./keys');

module.exports =
{
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
	networks:
	{
		development:
		{
			host: "localhost",
			port: 8545,
			network_id: "*"
		},
		ropsten:
		{
			provider: function()
			{
				return new HDWalletProvider(keys.seed, 'https://ropsten.infura.io/' + keys.infura, keys.key_index)
			},
			network_id: 3,
			gas: 2000000,
			gasPrice: 1000000000
		},
		mainnet:
		{
			provider: function()
			{
				return new HDWalletProvider(keys.seed, 'https://mainnet.infura.io/' + keys.infura, keys.key_index)
			},
			network_id: 1,
			gas: 4200000,
			gasPrice: 5000000000
		}
	}
};
