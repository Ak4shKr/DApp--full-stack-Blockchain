require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.19",
  networks: {
    sepolia: {
      url: "https://eth-sepolia.g.alchemy.com/v2/YZhbI2pTVFBJyJ8cXGvJRKRw5geqE_ut",
      accounts: [
        "99a5247bac6fcc9861778f9b95f202d98f7091f273eb10f7e811ff47e0e7f224",
      ],
      gas: 2100000,
      gasPrice: 80000000000,
    },
  },
};

// transacrtion address:  0x4c935aA348687f2b5504a0e6543B89d17BDD5092
