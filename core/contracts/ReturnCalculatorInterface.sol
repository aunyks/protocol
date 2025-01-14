/*
  ReturnCalculator Interface
  The interface that contracts use to compute different modified return structures.
*/
pragma solidity 0.5.11;


/**
 * @title Computes the synthetic asset return based on the underlying asset's return.
 */
interface ReturnCalculatorInterface {
    /**
     * @notice Computes the synthetic asset return when the underlying asset price changes from `oldPrice` to
     * `newPrice`.
     * @dev This can be implemented in many different ways, but a simple one would just be levering (or multiplying)
     * the return by some fixed integer.
     */
    function computeReturn(int oldPrice, int newPrice) external view returns (int assetReturn);

    /**
     * @notice Gets the effective leverage for the return calculator.
     * @dev If there is no sensible leverage value for a return calculator, this method should return 1.
     */
    function leverage() external view returns (int _leverage);
}
