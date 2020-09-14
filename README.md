# Ariane RISC-V CPU - Adapted to the RISC-V Bitmanip extension

## Compiling a test code

To generate a .mem file from an assembly test program:

```
$ cd test-bitmanip/as
$ make testname=example
```

These commands create a preloader.mem file in $HOME/test-bitmanip/as. It will be loaded to memory at the beginning of simulation.

## Running the simulation

Source the Cadence initialization script (e.g., "cds").

In the base directory, do:

```
$ make build
```
