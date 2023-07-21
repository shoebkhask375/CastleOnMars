// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.2/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.9.2/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts@4.9.2/access/Ownable.sol";
import "@openzeppelin/contracts@4.9.2/utils/Counters.sol";

contract CastleOnMars is ERC721, ERC721Burnable, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("Castle On Mars", "COM") {}

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }
}
