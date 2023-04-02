// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract NootToken is ERC20 {
    bool mintEnabled;

    address owner;

    error ErrMintDisabled();
    error Unauthorized();

    constructor() ERC20("NootToken", "NOOT") {
        _mint(msg.sender, 100000 ether);
        owner = msg.sender;
    }

    modifier onlyMintEnabled() {
        if (!mintEnabled) revert ErrMintDisabled();
        _;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) revert Unauthorized();
        _;
    }

    function mint(uint256 amount) public onlyMintEnabled {
        _mint(msg.sender, amount);
    }

    function setMintEnabled(bool _mintEnabled) public onlyOwner {
        mintEnabled = _mintEnabled;
    }
}
