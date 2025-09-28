// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { FHE, FHEVMConfigStruct } from "./FHE.sol";
import "./FHEVMConfig.sol";

contract SepoliaConfig {
    constructor() {
        FHEVMConfigStruct memory config = FHEVMConfig.getSepoliaConfig();
        FHE.setCoprocessor(config);
        FHE.setDecryptionOracle(FHEVMConfig.getSepoliaOracleAddress());
    }
}
// developed by dannywhale: TTTI