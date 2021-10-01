pragma solidity ^0.6.4;

contract Faucet {
    address payable owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    receive() external payable {}

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }

    function withdraw(uint withdraw_amount) public {
        require(withdraw_amount <= 0.1 ether);

        msg.sender.transfer(withdraw_amount);
    }
}