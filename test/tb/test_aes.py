import cocotb
import os
import sys
from pathlib import Path
from cocotb.clock import Clock
from cocotb.triggers import Timer, ClockCycles, RisingEdge, FallingEdge, ReadOnly
from cocotb.runner import get_runner

@cocotb.test()
async def test_aes(dut):
    # Start clock
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    # Reset DUT
    dut.rst.value = 1
    dut.input_valid.value = 0
    dut.state_in.value = 0
    await ClockCycles(dut.clk, 5)
    dut.rst.value = 0
    await ClockCycles(dut.clk, 5)

    # Set input values
    dut.state_in.value = 0x00112233445566778899aabbccddeeff
    # dut.state_in.value = 0xffeeddccbbaa99887766554433221100
    dut.input_valid.value = 1
    await ClockCycles(dut.clk, 1)
    dut.input_valid.value = 0

    # Wait for encryption to complete
    while dut.output_valid.value != 1:
        await RisingEdge(dut.clk)
    print(f"Ciphertext: {dut.state_out.value.hex()}")

def aes_runner():
    sim = os.getenv("SIM", "icarus")
    proj_path = Path(__file__).resolve().parent.parent
    sources = [
        proj_path / "hdl" / "top_level.sv",
        proj_path / "hdl" / "aes.sv",
        proj_path / "hdl" / "round.sv",
    ]
    sys.path.append(str(proj_path / "tb" / "model"))
    sys.path.append(str(proj_path / "tb"))
    build_test_args = ["-Wall", "-g2012"]
    hdl_toplevel = "top_level"
    runner = get_runner(sim)
    runner.build(
        sources=sources,
        hdl_toplevel=hdl_toplevel,
        always=True,
        build_args=build_test_args,
        parameters={},
        timescale=('1ns','1ps'),
        waves=True
    )
    test_file = os.path.basename(__file__).replace('.py', '')
    runner.test(
        hdl_toplevel=hdl_toplevel,
        test_module=test_file,
        waves=True
    )

if __name__ == "__main__":
    aes_runner()