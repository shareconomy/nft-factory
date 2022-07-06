pragma solidity ^0.5.8;

import "./TRC721.sol";

contract NFTFactroy {
    event Deployed(address contractAddress);

    function createTRC721(uint256 _salt) external returns (address newTRC721) {
        bytes memory bytecode = type(TRC721Token).creationCode;
        bytes32 salt = bytes32(_salt);
        assembly {
            newTRC721 := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        TRC721Token(newTRC721).initialized();

        emit Deployed(newTRC721);
    }
}
