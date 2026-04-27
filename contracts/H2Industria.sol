// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol"; 
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract H2GToken is ERC20, Ownable {
    constructor() ERC20("H2G Industria", "$H2G") Ownable(msg.sender) {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}

contract H2Protocolo is ERC721, ReentrancyGuard, Ownable {
    AggregatorV3Interface internal dataFeed;

    constructor() ERC721("Certificado H2 Verde", "H2-CERT") Ownable(msg.sender) {
        dataFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    }

    function realizarStake() external payable nonReentrant {
        require(msg.value > 0, "Envie ETH para o stake industrial");
    }

    function verPrecoMercado() public view returns (int) {
        (, int answer, , , ) = dataFeed.latestRoundData();
        return answer;
    }

    function emitirCertificado(address industria, uint256 id) public onlyOwner {
        _safeMint(industria, id);
    }
}