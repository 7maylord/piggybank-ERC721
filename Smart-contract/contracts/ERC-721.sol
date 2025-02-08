// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PiggyBankNFT is ERC721Enumerable, Ownable {
    uint256 private _tokenIds;

    constructor() ERC721("PiggyBankNFT", "PBNFT") {}

    function mintNFT(address recipient) external onlyOwner {
        _tokenIds += 1;
        _safeMint(recipient, _tokenIds);
        return _tokenIds;
    }
}