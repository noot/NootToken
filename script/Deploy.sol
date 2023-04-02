// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/NootToken.sol";

contract NootTokenScript is Script {
    function run() public {
        uint256 privkey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(privkey);

        NootToken nt = new NootToken();

        // uncomment to enable free minting
        nt.setMintEnabled(true);

        vm.stopBroadcast();
    }
}
