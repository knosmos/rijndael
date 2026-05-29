# rijndael

14-stage pipelined AES-256 encryption accelerator on FPGA. Beyond offering incredibly fast encryption speed, one cool thing about
FPGA accelerators is that we can bake the key directly into the fabric to offer more security (of course, given this Verilog source,
finding the key is trivial: it's `TWOCANKEEPASECRETIF1OFTHEMISDEAD`, with utf-8 encoding). This particular project is built on
a Zynq-7000 SoC; the CPU communicates with PL over ten AXI4-Lite registers.

Configured for Digilent CoraZ7-07S devboard. Currently, only ECB mode is implemented. Obviously, don't use this for anything
that actually requires security. It's constant time but the S-box inside is almost certainly vulnerable to power consumption
side channel attacks.

<img width="1271" height="993" alt="image" src="https://github.com/user-attachments/assets/c61bb939-9da9-4013-84ca-9e8f94a9ed52" />
<p align=center>
  Cool but rather useless device rendering
</p>

## File Structure
- The root directory is a Vivado project.
- `/sw` is a Vitis project containing CPU code (`/sw/app/src/`). Flash board from here.
- `/ip_repo/aes_core_1_0` contains the custom IP block that implements the FPGA accelerator.
  - `aes_core_slave_lite_v1_0_S00_AXI.v` contains the AXI interface code and instantiates the accelerator.
  - `aes_bridge.sv` maps the AXI registers into the 16-byte block I/O for AES and contains the 15 round keys.
  - `aes.sv` runs the actual AES algorithm, which consists of 14 stages.
  - `round.sv` implements a single AES stage.
