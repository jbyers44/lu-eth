// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract HashBench {
    event Nonce(uint nonce);

    function hash() public returns (uint) {
        uint seed = uint(keccak256(abi.encode(msg.sender, block.timestamp)));

        uint target = 1 << 196;
        emit Nonce(target);

        for (uint nonce = seed; ; nonce++) {
            nonce = uint(keccak256(abi.encode(nonce)));

            if (nonce < target) {
                emit Nonce(nonce);
                return nonce;
            }
        }
        return 0;
    }

}