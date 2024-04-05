pragma solidity ^0.8.0;

// Build the Contract
contract Lottery {
address public address1;
address public address2;
address public address3;
address public address4;
address public address5;
address public Winner;


function setLotteryInputs(address _address1, address _address2, address _address3,address _address4,address _address5) public {
    address1 = _address1;
    address2 = _address2;
    address3 = _address3;
    address4 = _address4;
    address5 = _address5;
}
//picking a random address
  function chooseRandomAddress() public {
    uint256 randomNumber = uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, block.number)));
    uint256 randomIndex = randomNumber % 5;

    if (randomIndex == 0) {
        Winner = address1;
    } else if (randomIndex == 1){
        Winner = address2;
    } else if (randomIndex == 2){
        Winner = address3;
    }else if (randomIndex == 3) {
        Winner = address3;
    }else if (randomIndex == 4) {
        Winner = address3;
    }
}
