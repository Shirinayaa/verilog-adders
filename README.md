# Verilog Adders

## Overview

This project implements digital adders in Verilog and verifies them using testbenches.

Implemented Circuits:

* Half Adder

## Learning Objectives

* Understand arithmetic circuits in digital electronics
* Learn how logic gates are combined to perform binary addition
* Create and run testbenches
* Simulate digital circuits using Icarus Verilog
* Analyze waveforms using GTKWave

---

# Half Adder

Logic:

SUM = A ^ B

CARRY = A & B

Truth Table:

| A | B | SUM | CARRY |
| - | - | --- | ----- |
| 0 | 0 | 0   | 0     |
| 0 | 1 | 1   | 0     |
| 1 | 0 | 1   | 0     |
| 1 | 1 | 0   | 1     |

### Description

A Half Adder is a combinational circuit that adds two binary digits.

Inputs:

* A
* B

Outputs:

* SUM
* CARRY

The SUM output is generated using an XOR operation, while the CARRY output is generated using an AND operation.

---

# Files

* half_adder.v

Testbenches:

* half_adder_tb.v

---

## Waveform

Half Adder simulation waveform generated using GTKWave.

[Half Adder Waveform](screenshots/half_adder_waveform.png)

---

# Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* VS Code

---

# Concepts Learned

* Binary Addition
* Combinational Logic
* Half Adder Design
* XOR Gate
* AND Gate
* Testbenches
* reg vs wire
* Unit Under Test (UUT)
* Waveform Generation
* GTKWave Analysis

---

# Future Work

* Full Adder
* Ripple Carry Adder
* Carry Lookahead Adder
* Binary Adder/Subtractor
* Arithmetic Logic Unit (ALU)
