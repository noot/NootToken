// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/NootToken.sol";

contract NootTokenScript is Script {
    address deployedNootToken = 0xa1E32d14AC4B6d8c1791CAe8E9baD46a1E15B7a8;

    function run() public {
        uint256 privkey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(privkey);

        NootToken nt = NootToken(deployedNootToken);

        // uncomment to mint
        // nt.mint(1);

        vm.stopBroadcast();
    }
}
