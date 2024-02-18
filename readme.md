# ExampleContract

A simple Solidity smart contract with modifiers, events, and various functions.

## Overview

This contract, `Task`, showcases the use of modifiers, events, and different types of functions in Solidity. It includes functionality to set and retrieve a value, along with pure, view, assert, and revert functions for demonstration purposes.

## Contract Details

- **Owner**: The owner of the contract is the one who deployed it.

- **Value**: A public variable that can be set by the owner. It is emitted through the `ValueChanged` event.

## Functions

### `setValue(uint256 _newValue)`

This function allows the owner to set a new value. The provided value must be greater than zero.

Modifiers:
- `onlyOwner`: Ensures that only the owner can call this function.
- `validValue`: Ensures that the provided value is greater than zero.

### `getValue()`

This view function retrieves the current value.

### `pureFunction(uint256 _a, uint256 _b)`

A pure function that adds two numbers and returns the result.

### `viewFunction(uint256 _c)`

A view function that adds the current value to the provided parameter.

### `assertFunction()`

A view function that uses the `assert()` statement to validate a condition (value > 0).

### `revertFunction()`

A pure function that intentionally reverts the transaction with a custom error message.

## Events

### `ValueChanged(uint256 newValue)`

Emitted whenever the `setValue` function is called, indicating a change in the contract's value.

## Usage

1. **Deploy the Contract:**

   Deploy the contract to your preferred Ethereum-compatible blockchain using tools like Remix or Truffle.

2. **Interact with the Contract:**

   Use a blockchain explorer or a DApp to interact with the contract. You can call functions such as `setValue` and `getValue`.

## Development

- Solidity Version: ^0.8.19

