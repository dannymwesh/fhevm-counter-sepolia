// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { FHE, euint32, externalEuint32 } from "./FHE.sol";
import "./SepoliaConfig.sol";


contract FHECounter is SepoliaConfig {
    euint32 private _count;

    function getCount() external view returns (euint32) {
        return _count;
    }

    function increment(externalEuint32 inputEuint32, bytes calldata inputProof) external {
        euint32 encrypted = FHE.fromExternal(inputEuint32, inputProof);
        _count = FHE.add(_count, encrypted);
        FHE.allowThis(_count);
        FHE.allow(_count, msg.sender);
    }

    function decrement(externalEuint32 inputEuint32, bytes calldata inputProof) external {
        euint32 encrypted = FHE.fromExternal(inputEuint32, inputProof);
        _count = FHE.sub(_count, encrypted);
        FHE.allowThis(_count);
        FHE.allow(_count, msg.sender);
    }
}
