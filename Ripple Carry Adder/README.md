# 4-bit Ripple Carry Adder

A 4-bit Ripple Carry Adder designed in Verilog using hierarchical Full Adders. The design adds two 4-bit binary numbers and an input carry (`Cin`) to produce a 4-bit sum and an output carry (`Cout`).

## Features

- 4-bit Ripple Carry Adder
- Built using hierarchical Full Adders
- Exhaustive self-checking testbench (512 test cases)
- Demo testbench for waveform generation
- RTL Schematic
- Technology Schematic
- GTKWave simulation

## Files

| File | Description |
|------|-------------|
| `ripple_carry_adder.v` | 4-bit Ripple Carry Adder design |
| `ripple_carry_adder_tb.v` | Self-checking testbench with all 512 input combinations |
| `ripple_carry_adder_demo_tb.v` | Demo testbench for waveform generation |
| `full_adder.v` | Hierarchical Full Adder module used in the design |
| `half_adder.v` | Half Adder module used inside the Full Adder |

## Simulation

The main testbench verifies all possible input combinations:

- 16 values of A
- 16 values of B
- 2 values of Cin

**Total Test Cases = 16 × 16 × 2 = 512**

Each test case is automatically checked against the expected result.

## Concepts Learned

- Hierarchical Design
- Module Instantiation
- Multi-bit Inputs and Outputs
- Ripple Carry Propagation
- Self-checking Testbench
- Nested `for` Loops
- Verilog Concatenation (`{cout, sum}`)
- Exhaustive Verification

## Tools Used

- Verilog HDL
- Vivado
- XSim
- GTKWave
