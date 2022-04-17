https://medium.com/pinata/how-to-build-erc-721-nfts-with-ipfs-e76a21d8f914

Here is an example on how to create a ERC721 smart contract to create NFT

Publish the contract
```
truffle deploy
```

Upload the NFT content (in this case .png image) and metadata 
```
node uploadFile.js
```

Here is an example of uploaded file from a generic ipfs node gateway

<https://ipfs.io/ipfs/QmPmxpTxVQVWX88hFdNYghUkmufPNZWpxZShusdffLNFBH/>

or

<https://cloudflare-ipfs.com/ipfs/QmPmxpTxVQVWX88hFdNYghUkmufPNZWpxZShusdffLNFBH/>

or 

<https://gateway.pinata.cloud/ipfs/QmPmxpTxVQVWX88hFdNYghUkmufPNZWpxZShusdffLNFBH/>

Also uploaded metadata for that file 

<https://gateway.pinata.cloud/ipfs/QmRqELod2g6cB75U7P5N9e7ykYAo2Ay5pKHCYTGpBj9pWr>

And that metadata is used to mint the ERC721 smart contract

```
HelloWorldNFT.awardItem(
	<your_wallet_address>, 
	"QmRqELod2g6cB75U7P5N9e7ykYAo2Ay5pKHCYTGpBj9pWr" , 
	"ipfs://QmRqELod2g6cB75U7P5N9e7ykYAo2Ay5pKHCYTGpBj9pWr"
)
```


