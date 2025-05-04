// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {TokenVk} from "../src/TokenVk.sol";

contract TokenVkScript is Script {
    TokenVk public tokenInstance; // Renamed to avoid shadowing
    
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80;
        vm.startBroadcast(deployerPrivateKey);
        
        uint256 initialSupply = 1000000 * 10**18; // Example: 1 million tokens with 18 decimals
        tokenInstance = new TokenVk(initialSupply);
        
        // Log the deployed contract address for verification
        console.log("TokenVk deployed at:", address(tokenInstance));
        
        vm.stopBroadcast();
    }
}