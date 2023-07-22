pragma solidity ^0.8.0;

import "../src/MomeNFT.sol";
import "forge-std/Script.sol";

contract DeployMomeNft is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("OWNER_1_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        address MomeNFT = address(new MomeNFT());
        console2.log("MomeNFT address: ");
        console2.log(MomeNFT);
        vm.stopBroadcast();
    }
}
