async function main() {
  const transaction = await ethers.deployContract("Transaction");
  console.log("Transaction Address;  ", await transaction.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
