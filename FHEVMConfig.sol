// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { FHEVMConfigStruct } from "./FHE.sol";

library FHEVMConfig {
    function getSepoliaConfig() internal pure returns (FHEVMConfigStruct memory) {
        return FHEVMConfigStruct({
            ACLAddress:           0xFee8407e2f5e3Ee68ad77cAE98c434e637f516e5,
            FHEVMExecutorAddress: 0x687408aB54661ba0b4aeF3a44156c616c6955E07,
            KMSVerifierAddress:   0x9D6891A6240D6130c54ae243d8005063D05fE14b,
            InputVerifierAddress: 0x3a2DA6f1daE9eF988B48d9CF27523FA31a8eBE50
        });
    }

    function getSepoliaOracleAddress() internal pure returns (address) {
        return 0xa02Cda4Ca3a71D7C46997716F4283aa851C28812;
    }
}
// developed by dannywhale: TTTI