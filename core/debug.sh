#! /bin/sh

xvlog ../src/test_csr.v ../src/core_csr.v
xelab -debug typical test_csr -s test_csr.sim
xsim --runall test_csr.sim
rm -rf *

xvlog ../src/test_top.v ../src/core_top.v ../src/core_decode.v ../src/core_alu.v ../src/core_reg.v
xelab -debug typical test_top -s test_top.sim
xsim --runall test_top.sim
rm -rf *

xvlog ../src/test_fpu.v ../src/core_fpu.v
xelab -debug typical test_fpu -s test_fpu.sim
xsim --runall test_fpu.sim
rm -rf *

xvlog ../src/test_decode.v ../src/core_decode.v
xelab -debug typical test_decode -s test_decode.sim
xsim --runall test_decode.sim
rm -rf *

xvlog ../src/test_alu.v ../src/core_alu.v
xelab -debug typical test_alu -s test_alu.sim
xsim --runall test_alu.sim
rm -rf *
