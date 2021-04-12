pragma solidity >=0.5.0 <0.6.0;

// Note that using a standard like ERC721 has the benefit that we don't have to implement the
// auction or escrow logic within our contract that determines how players can trade / sell items.
// If we conform to the spec, someone else could build an exchange platform for
// crypto-tradable ERC721 assets, and our ERC721-compatible items would be usable on that platform.
// So there are clear benefits to using a token standard instead of rolling your own trading logic.

contract ERC721 {
  event Transfer(address indexed _from, address indexed _to, uint256 indexed _tokenId);
  event Approval(address indexed _owner, address indexed _approved, uint256 indexed _tokenId);

  function balanceOf(address _owner) external view returns (uint256);
  function ownerOf(uint256 _tokenId) external view returns (address);
  function transferFrom(address _from, address _to, uint256 _tokenId) external payable;
  function approve(address _approved, uint256 _tokenId) external payable;
}