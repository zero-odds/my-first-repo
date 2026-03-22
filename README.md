# Verilog HDL Projects

Learning Verilog HDL as part of my 4th semester VLSI track.
Building from fundamentals to full projects over 6 weeks.

## Completed

### Combinational Circuits
- AND Gate — basic logic gate using assign statement
- 2:1 MUX — multiplexer using assign and ternary operator
- 4:1 MUX — multiplexer using nested ternary operator
- Half Adder — sum and carry using XOR and AND
- Full Adder — 3 input adder with carry in and carry out

### Projects
- 4-bit Ripple Carry Adder — 4 Full Adders chained together
  using module instantiation and internal carry wires

## In Progress
- Week 2: Sequential circuits — Flip Flops and Counters

## Coming Soon
- 4-bit ALU (Week 3)
- Finite State Machine (Week 4)
- VGA Sync Generator (Week 5)

## Tools Used
- JDoodle Online Verilog Compiler
- Icarus Verilog (local simulation)
- VS Code
- Git and GitHub

## How to Simulate Locally
Install Icarus Verilog then run:
iverilog -o output filename.v
vvp output

## Status
Week 1 complete. 6 circuits written from scratch and simulated.
First project — 4-bit Ripple Carry Adder — done and working.