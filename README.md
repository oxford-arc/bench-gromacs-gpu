# GROMACS Benchmark

This benchmark uses the GROMACS 2018.2 application and [HECBioSim](http://www.hecbiosim.ac.uk/gromacs-benchmarks) benchmark data on a single GPU with five CPU cores.

## Building the benchmark

- Clone the repository

```
git clone https://github.com/oxford-arc/bench-gromacs-gpu
```

- Build the container

The container is based upon an NVidia Cloud docker image.

```
cd bench-gromacs-gpu
sh build.sh
```

- Run the benchmark code

```
sh runbench.sh
```

## Results

Results from a current ARC node:
