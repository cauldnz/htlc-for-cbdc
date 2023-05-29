pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

/**
 * A basic token for testing the HashedTimelockERC20.
 */
contract CBDCToken is ERC20, ERC20Detailed {
    
    
   constructor(
        string memory name_,
        string memory symbol_,
        uint initialSupply_,
        address[] memory accounts_
    ) ERC20Detailed(name_, symbol_, 18) public {
        require(initialSupply_ > 0, "Initial supply has to be greater than 0");
        for (uint i = 0; i < accounts_.length; i++) {
            _mint(accounts_[i], initialSupply_ * 10**18);
        }
    }
}
