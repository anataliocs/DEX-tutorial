pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Exchange is ERC20 {

    address public cryptoDevTokenAddress;

    constructor(address _cryptoDevToken) ERC20("CryptoDev LP Token", "CDLP") {
        require(_cryptoDevToken != address(0), "Token address passed is a null address");
        cryptoDevTokenAddress = _cryptoDevToken;
    }

    function getReserve() public view returns (uint) {
        return ERC20(cryptoDevTokenAddress).balanceOf(address(this));
    }
}
