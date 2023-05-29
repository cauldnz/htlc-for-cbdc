const HashedTimelockERC20 = artifacts.require('./HashedTimelockERC20.sol')
const CBDCToken = artifacts.require('./CBDCToken.sol')

module.exports = function (deployer, network, accounts) {
  deployer.deploy(HashedTimelockERC20)
  deployer.deploy(CBDCToken, "CBDCToken", "CBDC", 1000, accounts)
}
