//SPDX-License-Identifier: UNLICENSED

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.9;

contract CryptoPuzzle {
    
    struct Gamer {
        bool status;
        address gamer_address;
        string mnemonics_hash;
        int256 value; // only support eth in version1.0
    }
    mapping  (address => Gamer) public gamers;
    // enum TreasureType {ETH,ERC20,ERC721}
    constructor() {
        
    }

    function joinGame(address _gamer_address, string memory _mnemonics_hash,int256 _value) public{
        require(gamers[msg.sender].status == false, "");
        // check if the gamer_address has enough value of eth
        // check if it's the correct hash of mnemonics
        gamers[msg.sender] = Gamer(true, _gamer_address, _mnemonics_hash, _value);
    }
}