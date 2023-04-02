// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

import "forge-std/Test.sol";
import "../src/NootToken.sol";

contract NootTokenTest is Test {
    NootToken public nt;

    address deployer = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;

    function setUp() public {
        vm.prank(deployer);
        nt = new NootToken();
    }

    function testMint() public {
        address someAddress = address(3);
        vm.prank(someAddress);
        vm.expectRevert();
        nt.mint(1);

        vm.prank(deployer);
        nt.setMintEnabled(true);

        vm.prank(someAddress);
        nt.mint(1);
        assertEq(nt.balanceOf(someAddress), 1);
    }
}