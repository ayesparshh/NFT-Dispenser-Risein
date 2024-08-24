# RiseinCourseNFT

## NFT

![NFT Image](https://maroon-many-cod-896.mypinata.cloud/ipfs/QmNwJwXQVP22sAb7HFHninieKE4MvXLCLjttz2GDYUsxcb)

## Contract Address

You can access the deployed contract on Sepolia Etherscan: [0x26394ec50ff41dc03b8288c1916f8d7425d63ad7](https://sepolia.etherscan.io/address/0x26394ec50ff41dc03b8288c1916f8d7425d63ad7)

## Project Overview

The `RiseinCourseNFT` project is a Solidity-based smart contract that implements an ERC721 Non-Fungible Token (NFT). This project is designed to mint NFTs for users who complete specific challenges. The main functionalities of the project include:

### Key Features

- **Minting NFTs**: Users can mint NFTs by providing their address and a Twitter handle. This is handled by the [`mintNft`](src/IRiseinCourseNFT.sol) function.
- **Adding Challenges**: The contract allows adding new challenge contracts that users can interact with to earn NFTs. This is managed by the [`addChallenge`](src/IRiseinCourseNFT.sol) function.
- **Challenge Interface**: The project includes an interface for challenge contracts, [`IRiseinCourseChallenge`](src/IRiseinCourseChallenge.sol), which defines the necessary functions that each challenge contract must implement.
- **OpenZeppelin**: This project extensively uses OpenZeppelin libraries for secure and reliable smart contract development. OpenZeppelin's ERC721 and Ownable contracts are inherited to implement the core functionalities of the RiseinCourseNFT contract.

### Vision
- **User Experience**: Making learning rewarding hooks users to complete milestones as well as the course.
- **Validation**: If users successfully completes the tasks according to what they learnt will boost users confident and eventually company will grow.

### Contract Details

- **Main Contract**: The main contract is [`RiseinCourseNft`](src/RiseinCourseNFT.sol), which inherits from OpenZeppelin's ERC721 and Ownable contracts.
- **Deployment Script**: The deployment of the contract is handled by the [`DeployRiseinCourseNFT`](script/DeployRiseinCourseNFT.s.sol) script, which uses Foundry's `Script` library to automate the deployment process.

### Development Setup

1. **Clone the Repository**:

   ```sh
   git clone https://github.com/your-repo/riseincoursenft.git
   cd riseincoursenft
   ```

2. **Install Dependencies**:

   ```sh
   forge install
   ```

3. **Compile the Contracts**:

   ```sh
   forge build
   ```

4. **Deploy the Contract**:

   ```sh
   forge script script/DeployRiseinCourseNFT.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast
   ```

5. **Verify the Contract**:
   ```sh
   forge verify-contract --chain-id 11155111 --num-of-optimizations 200 <contract_address> src/RiseinCourseNFT.sol:RiseinCourseNft
   ```

### Environment Variables

Make sure to set the following environment variables in your `.env` file:

```properties
PRIVATE_KEY=your_private_key
RPC_URL=http://127.0.0.1:8545
SEPOLIA_RPC_URL=https://eth-sepolia.g.alchemy.com/v2/your_alchemy_key
ETHERSCAN_API_KEY=your_etherscan_api_key
```

## Disclaimer

Note: Currently, no challenges have been added to the contract. The functionality for adding and interacting with challenges is in place, but no specific challenges are available at this time. Will add some if this project wins the price as everything is production ready.
