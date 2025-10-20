// Get funds
// Withdraw funds 
// Set a minimum value in usd

// SPDX-License-Identifier:MIT

pragma solidity ^0.8.8;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract FundMe {
    // Wnt to be able to send a min amount in usd
    //1. How do we send ETH to this contract

    function fund() public payable {
        require(msg.value>=1e18, "Didn't send enough"); // 1e18 = 1 * 10 **18
    }

    function getPrice() public {
        // ABI
        // Address: 0x694AA1769357215DE4FAC081bf1f309aDC325306
    }

    function getVersion () public view returns ( uint256 ) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return priceFeed.version();
    }

}