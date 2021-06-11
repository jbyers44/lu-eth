// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract HashBench {

    function hash() view public returns (uint) {
        uint seed = uint(keccak256(abi.encode(msg.sender, block.timestamp)));

        uint target = 1 ** 250;

        for (uint nonce = seed; ; nonce++) {
            nonce = uint(keccak256(abi.encode(nonce)));

            if (nonce < target) {
                return nonce;
            }
        }
        return 0;
    }

}