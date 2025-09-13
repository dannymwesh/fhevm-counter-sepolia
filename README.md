
# fhEVM Counter on Sepolia

Minimal example of deploying a contract with **fully homomorphic encryption** (fhEVM) using [Zama](https://zama.ai).

## Contracts
- `FHEVMConfig.sol` — Sepolia config and Oracle address
- `SepoliaConfig.sol` — sets coprocessor + oracle
- `FHECounter.sol` — encrypted counter with increment/decrement

## Deploy in Remix
1. Open [Remix IDE](https://remix.ethereum.org).
2. Create 4 files:
   - `FHE.sol` (from official fhEVM repo)
   - `FHEVMConfig.sol` (from this repo)
   - `SepoliaConfig.sol` (from this repo)
   - `FHECounter.sol` (from this repo)
3. Compile with Solidity `^0.8.24`.
4. Deploy `FHECounter` to **Sepolia**.
5. Done 🎉

## Usage
- `getCount()` returns encrypted bytes32
- To call `increment`/`decrement` use [@fhevm/js](https://www.npmjs.com/package/@fhevm/js).

Example:
```js
const fhevm = await FHEVM.create();
const { encrypted, proof } = fhevm.encrypt32(1);
await counter.increment(encrypted, proof);
