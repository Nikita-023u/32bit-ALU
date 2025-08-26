# 32-bit ALU in Verilog

Hi there! 👋 Welcome to my 32-bit Arithmetic Logic Unit (ALU) project.  

This project is a **simple 32-bit ALU built using Verilog**, designed to perform basic arithmetic and logic operations. I made it to **practice digital design, Verilog coding, and understanding how processors do calculations at the hardware level**.  

It’s a small project, but it’s a great way to see how computers handle numbers and logic behind the scenes.

## Features

This ALU can do the following operations:

| ALU_Sel | Operation        |
|----------|----------------|
| 0000     | ADD             |
| 0001     | ADD with carry  |
| 0010     | SUB             |
| 0011     | AND             |
| 0100     | OR              |
| 0101     | XOR             |
| 0110     | NOR             |
| 0111     | Set Less Than   |
| 1000     | Shift Left      |
| 1001     | Shift Right     |

Other features:

- Works with **32-bit input operands** (`A` and `B`)  
- Generates a **carry-out** when needed  
- Comes with a **testbench** to verify all operations  
- Generates waveform files for visualization in GTKWave  


Here’s how the project is organized:

