# Logic Circuits Using Verilog

This repository contains Verilog code for various fundamental digital logic circuits. The primary modules included are:

1. **Half Adder**
2. **Full Adder**
3. **Ripple Carry Adder**
4. **Ripple Carry Lookahead Adder**
5. **D Flip-Flop**

## Directory Structure

- `full_adder/`
  - `full_adder.v` : Verilog code for a Full Adder.
  - `full_adder_tb.v` : Test bench for the Full Adder.
- `half_adder/`
  - `half_adder.v` : Verilog code for a Half Adder.
- `ripple_carry_adder/`
  - `ripple_carry_adder.v` : Verilog code for a Ripple Carry Adder.
  - `ripple_carry_adder_tb.v` : Test bench for the Ripple Carry Adder.
- `ripple_carry_lookahead_adder/`
  - `ripple_carry_lookahead_adder.v` : Verilog code for a Ripple Carry Lookahead Adder.
  - `ripple_carry_lookahead_adder_tb.v` : Test bench for the Ripple Carry Lookahead Adder.
- `d_flip_flop/`
  - `d_flip_flop.v` : Verilog code for a D Flip-Flop.
  - `d_flip_flop_tb.v` : Test bench for the D Flip-Flop.

## Modules

### Half Adder

- **File**: `half_adder/half_adder.v`
- **Description**: Implements a Half Adder, which adds two single-bit binary numbers and produces a sum and a carry output.

### Full Adder

- **File**: `full_adder/full_adder.v`
- **Description**: Implements a Full Adder, which adds three single-bit binary numbers (two significant bits and a carry-in) and produces a sum and carry output.

### Ripple Carry Adder

- **File**: `ripple_carry_adder/ripple_carry_adder.v`
- **Description**: Implements a 4-bit Ripple Carry Adder, which adds two 4-bit binary numbers and a carry-in, propagating carry bits through a series of full adders.

### Ripple Carry Lookahead Adder

- **File**: `ripple_carry_lookahead_adder/ripple_carry_lookahead_adder.v`
- **Description**: Implements a 4-bit Ripple Carry Lookahead Adder, which improves performance over the Ripple Carry Adder by using lookahead logic to calculate carry bits in parallel.

### D Flip-Flop

- **File**: `d_flip_flop/d_flip_flop.v`
- **Description**: Implements a D Flip-Flop, which is a basic storage element in digital circuits. It captures the value of the data input (`D`) on the rising edge of the clock signal (`clk`), and optionally resets the output (`Q`) based on the reset signal.

## Practice and Future Development

This code is primarily for practice purposes to develop a better understanding of Verilog and digital logic design. I hope to build on this knowledge and create more complex and advanced programs in the future.

## Running the Tests

1. **Compile**: Use `iverilog` to compile the Verilog files. For example:
   ```sh
   iverilog -o full_adder/fa.vvp full_adder/full_adder_tb.v full_adder/full_adder.v
