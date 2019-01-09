keys = require './keys.js'


Eth = require 'ethjs'

sender = artifacts.require 'MassVestingSender'

sender_addr = '0xCBC66115e9d8655709c3408D0e320410Aef1161A'.toLowerCase()



log = console.log

ether = (val)->
	Eth.fromWei val, 'ether'


wei = (val)->
	Eth.toWei val, 'ether'


bn = (val)->
	return new Eth.BN val, 10


gas = (val, gas_price)->
	return (bn val).mul(bn '1000000000').mul(bn gas_price).toString()


delay = (ms)->
	return new Promise (resolve, reject)=>
		setTimeout resolve, ms

```
const getNonce = account => new Promise((resolve, reject) => {
	web3.eth.getTransactionCount(account, (err, result) => {

		if(err)
		{
			return reject(err);
		}

		resolve(result);
	});
});
```

address = '0xF9c024A74938F8e9172C14dE7b513D3ce4329B49'.toLowerCase()
data = [
	{id: 503, addr: address,	amount: '0.0001', vesting: '1545862481'}
	]



module.exports = (cb)->

	try

		eth = new Eth web3.currentProvider

		wei = (val)->
			val = to_fix val.toString(), 18
			return Eth.toWei(val, 'ether').toString()

	#	sender = await sender.deployed()

		sender = await sender.at sender_addr

		data = []

		await delay 1000

	catch err
		log err

	try






#	log nonce

#// for(let i = 0; i < data.length; i += size)
#// {
#// 	const slice = data.slice(i, i + size);
#// 	const ids = slice.map(s => s[0]);
#// 	const receivers = slice.map(s => s[1]);
#// 	const amounts = slice.map(s => s[2].mul(new BigNumber(10).pow(18)));
#//
#// 	// console.log(ids, receivers, amounts);
#//
#// 	console.log(`last processed address: ${receivers[receivers.length - 1]}`);
#//
#// 	for(let j = 0; j < 5; j++)
#// 		sender.bulkTransfer('0xbf799a2f71d020a4a8c10e7406e2bf970b3d734b', ids, receivers, amounts, {nonce: nonce++});
#//
#// 	sleep.sleep(1);
#// }
