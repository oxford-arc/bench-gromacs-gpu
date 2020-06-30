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

Results can be found in the results.txt file. 

```
--------------------------------------------------------
gromacs/1400k-atoms

Running on 1 node with total 48 cores, 48 logical cores, 2 compatible GPUs
Hardware detected:
  CPU info:
    Vendor: Intel
    Brand:  Intel(R) Xeon(R) Platinum 8268 CPU @ 2.90GHz
    Family: 6   Model: 85   Stepping: 7
      0000:86:00.0  Id: 10de:1db6  Class: 0x0302  Numa: 1
      0000:af:00.0  Id: 15b3:101b  Class: 0x0207  Numa: 1
      0000:af:00.1  Id: 15b3:101b  Class: 0x0207  Numa: 1
  GPU info:
    Number of GPUs detected: 2
    #0: NVIDIA Tesla V100-PCIE-32GB, compute cap.: 7.0, ECC: yes, stat: compatible
    #1: NVIDIA Tesla V100-PCIE-32GB, compute cap.: 7.0, ECC: yes, stat: compatible
       Time:     2204.949      440.990      500.0
                 (ns/day)    (hour/ns)
Performance:        3.919        6.124
Finished mdrun on rank 0 Tue Jun 30 16:42:16 2020
--------------------------- END ------------------------
--------------------------------------------------------
gromacs/20k-atoms

Running on 1 node with total 48 cores, 48 logical cores, 2 compatible GPUs
Hardware detected:
  CPU info:
    Vendor: Intel
    Brand:  Intel(R) Xeon(R) Platinum 8268 CPU @ 2.90GHz
    Family: 6   Model: 85   Stepping: 7
      0000:86:00.0  Id: 10de:1db6  Class: 0x0302  Numa: 1
      0000:af:00.0  Id: 15b3:101b  Class: 0x0207  Numa: 1
      0000:af:00.1  Id: 15b3:101b  Class: 0x0207  Numa: 1
  GPU info:
    Number of GPUs detected: 2
    #0: NVIDIA Tesla V100-PCIE-32GB, compute cap.: 7.0, ECC: yes, stat: compatible
    #1: NVIDIA Tesla V100-PCIE-32GB, compute cap.: 7.0, ECC: yes, stat: compatible
       Time:      157.492       31.498      500.0
                 (ns/day)    (hour/ns)
Performance:      274.305        0.087
Finished mdrun on rank 0 Tue Jun 30 16:42:50 2020
--------------------------- END ------------------------
--------------------------------------------------------
gromacs/3000k-atoms

Running on 1 node with total 48 cores, 48 logical cores, 2 compatible GPUs
Hardware detected:
  CPU info:
    Vendor: Intel
    Brand:  Intel(R) Xeon(R) Platinum 8268 CPU @ 2.90GHz
    Family: 6   Model: 85   Stepping: 7
      0000:86:00.0  Id: 10de:1db6  Class: 0x0302  Numa: 1
      0000:af:00.0  Id: 15b3:101b  Class: 0x0207  Numa: 1
      0000:af:00.1  Id: 15b3:101b  Class: 0x0207  Numa: 1
  GPU info:
    Number of GPUs detected: 2
    #0: NVIDIA Tesla V100-PCIE-32GB, compute cap.: 7.0, ECC: yes, stat: compatible
    #1: NVIDIA Tesla V100-PCIE-32GB, compute cap.: 7.0, ECC: yes, stat: compatible
       Time:     4647.515      929.503      500.0
                 (ns/day)    (hour/ns)
Performance:        1.859       12.908
Finished mdrun on rank 0 Tue Jun 30 16:58:31 2020
--------------------------- END ------------------------
--------------------------------------------------------
gromacs/465k-atoms

Running on 1 node with total 48 cores, 48 logical cores, 2 compatible GPUs
Hardware detected:
  CPU info:
    Vendor: Intel
    Brand:  Intel(R) Xeon(R) Platinum 8268 CPU @ 2.90GHz
    Family: 6   Model: 85   Stepping: 7
      0000:86:00.0  Id: 10de:1db6  Class: 0x0302  Numa: 1
      0000:af:00.0  Id: 15b3:101b  Class: 0x0207  Numa: 1
      0000:af:00.1  Id: 15b3:101b  Class: 0x0207  Numa: 1
  GPU info:
    Number of GPUs detected: 2
    #0: NVIDIA Tesla V100-PCIE-32GB, compute cap.: 7.0, ECC: yes, stat: compatible
    #1: NVIDIA Tesla V100-PCIE-32GB, compute cap.: 7.0, ECC: yes, stat: compatible
       Time:     1210.080      242.016      500.0
                 (ns/day)    (hour/ns)
Performance:        7.141        3.361
Finished mdrun on rank 0 Tue Jun 30 17:02:40 2020
--------------------------- END ------------------------
--------------------------------------------------------
gromacs/61k-atoms

Running on 1 node with total 48 cores, 48 logical cores, 2 compatible GPUs
Hardware detected:
  CPU info:
    Vendor: Intel
    Brand:  Intel(R) Xeon(R) Platinum 8268 CPU @ 2.90GHz
    Family: 6   Model: 85   Stepping: 7
      0000:86:00.0  Id: 10de:1db6  Class: 0x0302  Numa: 1
      0000:af:00.0  Id: 15b3:101b  Class: 0x0207  Numa: 1
      0000:af:00.1  Id: 15b3:101b  Class: 0x0207  Numa: 1
  GPU info:
    Number of GPUs detected: 2
    #0: NVIDIA Tesla V100-PCIE-32GB, compute cap.: 7.0, ECC: yes, stat: compatible
    #1: NVIDIA Tesla V100-PCIE-32GB, compute cap.: 7.0, ECC: yes, stat: compatible
       Time:      429.300       85.860      500.0
                 (ns/day)    (hour/ns)
Performance:      100.631        0.238
Finished mdrun on rank 0 Tue Jun 30 17:04:09 2020
--------------------------- END ------------------------
```

