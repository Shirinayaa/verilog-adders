# Full Adder

## Overview

A Full Adder is a combinational circuit that adds three 1-bit inputs (`a`, `b`, and `cin`) and produces two outputs:

- `sum`
- `cout` (carry)

This project includes two implementations:

- **Behavioral Design** using Boolean expressions
- **Hierarchical Design** using two Half Adders and one OR gate

---

## Truth Table

| a | b | cin | sum | cout |
|:-:|:-:|:---:|:---:|:----:|
|0|0|0|0|0|
|0|0|1|1|0|
|0|1|0|1|0|
|0|1|1|0|1|
|1|0|0|1|0|
|1|0|1|0|1|
|1|1|0|0|1|
|1|1|1|1|1|

---

## Files

| File | Description |
|------|-------------|
| `full_Adder.v` | Behavioral Full Adder |
| `half_adder.v` | Half Adder module |
| `full_adder_hierarchical.v` | Full Adder using two Half Adders |
| `full_adder_tb.v` | Testbench |
| `full_adder_waveform.png` | Simulation waveform |
| `full_adder_schematic.png` | Schematic of the behavioral design |
| `full_adder_rtl_schematic.png` | RTL schematic of the hierarchical design |

---

## Tools Used

- Verilog HDL
- AMD Vivado
- XSim Simulator

---

## Concepts Learned

- Full Adder
- Module Instantiation
- Hierarchical Design
- Internal Wires
- Behavioral Simulation
- RTL Schematic
