// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../Interface/ERC20.sol";
import "../Interface/Ownable.sol";
import "./ERC20Permit.sol";

contract MonoToken is ERC20, ERC20Permit, Ownable {
    constructor() ERC20("MonoToken", "MNT") ERC20Permit("MonoToken") {
        _mint(msg.sender, 10000000000 * 10 ** 18);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}