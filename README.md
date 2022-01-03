# Upgradeable Contract using an OpenZeppelin Proxy

This Hardhat project uses OpenZeppelin's [contracts-upgradeable](https://www.npmjs.com/package/@openzeppelin/contracts-upgradeable) and [hardhat-upgrades](https://www.npmjs.com/package/@openzeppelin/hardhat-upgrades) packages to deploy an upgradeable contract.

## Deployment

The BoxV1 contract can be deployed by running `npx hardhat run scripts/deployProxy.js --network rinkeby`, which will print the deployed proxy contract's address to the command line. The proxy contract should be visible in [Rinkeby Etherscan](https://rinkeby.etherscan.io/) and you should be able to select Contract > Code > More Options > Is this a proxy? in order to identify the address of the implementation contract.

The implementation contract can then be verified in the command line by running `npx hardhat verify --network rinkeby YOUR_BOXV1_IMPLEMENTATION_ADDRESS`.

To deploy the BoxV2 contract, the above steps can be repeated while simply replacing `deployProxy.js` with `upgrade.js` in the contract deployment command.

## Example Contracts

The following links direct to a deployed proxy with two different implementations

* [Proxy](https://rinkeby.etherscan.io/address/0xd67d09e29B67D7Edf1c5152Ad43A4d9663118425#readProxyContract)
* [BoxV1](https://rinkeby.etherscan.io/address/0x98ef882c9c47fd966d5134955eeb81a11e855871#code) (original implementation)
* [BoxV2](https://rinkeby.etherscan.io/address/0xbccb85f16d7cd7d41debce97cd54fe7a5d7adaa1#code) (upgraded implementation)