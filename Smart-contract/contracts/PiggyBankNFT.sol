// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PiggyBankNFT is ERC721Enumerable, Ownable {
    uint256 private _tokenIds;

    // Pass msg.sender to Ownable()
    constructor() ERC721("PiggyBankNFT", "PBNFT") Ownable(msg.sender) {}

    function mintNFT(address recipient) external onlyOwner returns (uint256) {
        _tokenIds++;
        _safeMint(recipient, _tokenIds);
        return _tokenIds;
    }
}