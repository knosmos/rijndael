# rijndael

14-stage pipelined AES-256 encryption accelerator on FPGA. Beyond offering incredibly fast encryption speed, one cool thing about
FPGA accelerators is that we can bake the key directly into the fabric to offer more security (of course, given this Verilog source,
finding the key is trivial: it's `TWOCANKEEPASECRETIF1OFTHEMISDEAD`, with utf-8 encoding). This particular project is built on
a Zynq-7000 SoC, with the CPU communicating with PL over ten AXI4-Lite registers.

Configured for Digilent CoraZ7-07S devboard. Currently, only ECB mode is implemented.

<img width="1271" height="993" alt="image" src="https://github.com/user-attachments/assets/c61bb939-9da9-4013-84ca-9e8f94a9ed52" />
<p align=center>
  Cool but rather useless device rendering
</p>
