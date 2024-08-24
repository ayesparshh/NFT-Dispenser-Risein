// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from 'forge-std/Script.sol';
import {RiseinCourseNft} from '../src/RiseinCourseNFT.sol';

contract DeployRiseinCourseNFT is Script {
    function run() external returns (RiseinCourseNft) {
        vm.startBroadcast();
        RiseinCourseNft riseincoursenft = new RiseinCourseNft();
        vm.stopBroadcast();
        return riseincoursenft;
    }
}