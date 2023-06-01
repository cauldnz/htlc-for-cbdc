// SPDX-License-Identifier: GPL
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * A basic token for testing the HashedTimelockERC20.
 */
contract CBDCToken is ERC20, Ownable {
    
    
   constructor(
        string memory name_,
        string memory symbol_,
        uint initialSupply_,
        address[] memory accounts_
    ) ERC20(name_, symbol_) {
        require(initialSupply_ > 0, "Initial supply has to be greater than 0");
        for (uint i = 0; i < accounts_.length; i++) {
            _mint(accounts_[i], initialSupply_ * 10**18);
        }
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
