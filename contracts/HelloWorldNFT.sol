// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract HelloWorldNFT is ERC721 {
	using Counters for Counters.Counter;
	Counters.Counter private _tokenIDs;
	mapping(string => uint8) hashes;


	constructor() public ERC721("HelloWorldNFT", "hwNFT") {}

	function awardItem(address recipient, string memory hash, string memory metadata)
		public
		returns (uint256)

	{
		require(hashes[hash] != 1);
		hashes[hash] = 1;
		_tokenIDs.increment();
		uint256 newItemId = _tokenIDs.current();

		_mint(recipient, newItemId);
		tokenURI(newItemId);

		return newItemId;
	}
}
