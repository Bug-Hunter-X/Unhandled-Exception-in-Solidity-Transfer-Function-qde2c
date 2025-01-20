# Unhandled Exception in Solidity Transfer Function

This repository demonstrates a common error in Solidity smart contracts: unhandled exceptions during the transfer function.  The `transfer` function lacks error handling for edge cases, such as the recipient address being invalid (e.g., 0x000...). This vulnerability can lead to unexpected behavior and potentially denial-of-service conditions. 

## Vulnerability

The `transfer` function does not check if the `to` address is valid before attempting to transfer tokens. Sending tokens to an invalid address will revert the transaction and consume gas without transferring tokens. This is not robust and can be exploited by malicious actors.

## Solution

The provided solution enhances the `transfer` function to include error handling for invalid recipient addresses.  It also provides a `balanceOf` function to display the balance of an account. The solution ensures that only valid addresses receive tokens, preventing the potential for denial-of-service attacks.