pragma solidity ^0.8.0;

import "../src/MomeNFT.sol";
import "forge-std/Script.sol";

contract DeployMomeNft is Script {

    address constant public capsuleAddress = 0x7c1DC50D061b87D4E94Cb09999729E0b57E1Ce34;
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("OWNER_1_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        address MomeNFTaddress = address(new MomeNFT(capsuleAddress));
        console2.log("MomeNFT address: ");
        console2.log(MomeNFTaddress);
        vm.stopBroadcast();
    }
}
