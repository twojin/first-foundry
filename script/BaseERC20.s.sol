// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {BaseERC20} from "../src/BaseERC20.sol";

contract BaseERC20Script is Script {
    BaseERC20 public baseERC20;

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        baseERC20 = new BaseERC20();
        vm.stopBroadcast();
    }
}