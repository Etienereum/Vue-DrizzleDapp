pragma solidity >=0.4.21 <0.6.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract TutorialToken is ERC20 {
    string public name = "TutorialToken";
    string public symbol = "TT";
    uint public decimals = 4;
    uint public INITIAL_SUPPLY = 1200000;

    constructor() public {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
