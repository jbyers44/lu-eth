const ethers = require('ethers')

const run_benchmark = async () => {
    const address = "0xdC1607548e32BAfb59Dc53Ace0130CDd2723A3D8"
    const wallet = new ethers.Wallet("0x3fe72622b63ef4448ae584e8c69d7ae493ab2558d05c92c39c902a5c84eb6dc8")
    const abi = [
		{
			"anonymous": false,
			"inputs": [
				{
					"indexed": false,
					"internalType": "uint256",
					"name": "nonce",
					"type": "uint256"
				}
			],
			"name": "Nonce",
			"type": "event"
		},
		{
			"inputs": [],
			"name": "hash",
			"outputs": [
				{
					"internalType": "uint256",
					"name": "",
					"type": "uint256"
				}
			],
			"stateMutability": "view",
			"type": "function"
		}
	]
        
    const provider = new ethers.providers.JsonRpcProvider()
    const signer = wallet.connect(provider)
    
    const hashbench = new ethers.Contract(address, abi, provider)
    const hashbench_signed = hashbench.connect(signer)

    var options = { gasPrice: 2, gasLimit: 136370 };
    var hash
    for(var i = 0; i < 1000; i++) {
        hash = await hashbench_signed.hash(options)   
    }
    //console.log(await hashbench_signed.estimateGas.hash())
}

console.log("Running benchmark...")
run_benchmark()
