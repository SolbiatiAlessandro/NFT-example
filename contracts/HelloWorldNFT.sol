pragma solidity ˆ0.6.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol"

contract HelloWorldNFT is ERC721 {
	constructor() public ERC721("HelloWorldNFT", "hwNFT");

}
