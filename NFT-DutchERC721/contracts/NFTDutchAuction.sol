// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import 'hardhat/console.sol';
import '@openzeppelin/contracts/token/ERC721/ERC721.sol';

contract NFTDutchAuction {

    // Required variables
    address payable addressOfOwner;
    address payable winnerAddress;
    uint256 reservePrice;
    uint256 numBlocksActionOpen;
    uint256 offerPriceDecrement;
    uint256 startBlockNumber;
    uint256 winningBidAmount;
    bool auctionEnded;
    bool confirmed;
    IERC721 public erc721TokenAddress;
    uint256 public nftTokenId;
    uint256 totaltokens;
    uint256 public expiresAt;
    uint256 refundAmount;

    constructor(address _erc721TokenAddress, uint256 _nftTokenId, uint256 _reservePrice, uint256 _numBlocksAuctionOpen,
        uint256 _offerPriceDecrement)
    {
        erc721TokenAddress = IERC721(_erc721TokenAddress);
        nftTokenId = _nftTokenId;
        reservePrice = _reservePrice;
        numBlocksActionOpen = _numBlocksAuctionOpen;
        offerPriceDecrement = _offerPriceDecrement;
    }

}
