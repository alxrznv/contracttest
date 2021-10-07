pragma solidity ^0.4.24;
contract PhraseFlow {
    string[] public flow;
    uint public count;

    function addPhrase(string -newPhraase) public {
        flow.push(_newPhrase);
        count = count +1;

    }
    constructor() public {
        count = 0;
    }
}