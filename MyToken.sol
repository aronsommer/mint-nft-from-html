// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC1155 {
    constructor() ERC1155("ipfs://bafkreidovslcwxchqzonugqmfipt2mmhp66bng32avdv7gdv3lbk7fo7ze") {}

    function mint(address account, uint256 id, uint256 amount, bytes memory data) public        
    {
        _mint(account, id, amount, data);
    }
}