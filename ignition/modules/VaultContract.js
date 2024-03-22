const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");



module.exports = buildModule("VaultContract", (m) => {
 

  const VaultContract = m.contract("VaultContract", [] );

  return { VaultContract };
});
