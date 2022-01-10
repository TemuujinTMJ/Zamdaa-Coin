// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/TokenTimelock.sol";

contract ZamdaaCoin is ERC20Burnable {
    TokenTimelock public teamTimelock;
    constructor() ERC20("Zamdaa Coin", "ZMD") {
        // Pre-Sale
        _mint(0x75ce798C8Be7f5680784C2045F50a82c168C0A61, 17500000000*10**18);

        // IEO
        _mint(0xE8493c11b0FaFB32A9B38BD5D5631CC86A074BBB, 17500000000*10**18);

        // Liquidity Reserve
        _mint(0xDf07cDD261Ee51eb08FefB4a7AeCCC03Bcc6E823, 17500000000*10**18);

        // Stratagy reserve
        _mint(0x8fC5d22A84056e4602dAD0F8EdB8cE5C97507E46, 35000000000*10**18);

        // Burn
        _mint(0x269203d5e4eB77E5237341A42BbfC317061c5938, 35000000000*10**18);

        // International IEO
        _mint(0xA659be150E86974B29707d18B514d6751c4BFF40, 17500000000*10**18);

        // Global Exchange
        _mint(0xA423817e0A9686a7Fba277122A5897F7E075A089, 17500000000*10**18);

        // Founders, team and advisors
        teamTimelock = new TokenTimelock(this, 0x426b0754BaEDcDF021DDCa33329ef7e3Eba1984d, block.timestamp + 1*365*24*60*60);
        _mint(address(teamTimelock), 17500000000*10**18);
    }
}