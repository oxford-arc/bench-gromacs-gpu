#! /bin/bash
#
echo "Building GROMACS benchmark environment"

echo "Extracting HECBIOSIM benchmarks..."
wget http://www.hecbiosim.ac.uk/gromacs-benchmarks/send/2-software/8-gromacs-bench 
mv 8-gromacs-bench hecbiosim-gromacs.tgz
tar xzf hecbiosim-gromacs.tgz

echo "Downloading Singularity image..."
cd image
singularity pull library://oxford-arc/default/gromacs2018.2-test:sha256.a62bf1b6c9a6e850441b13fd74ad70ed24e573c85d1600eb9bd48041cb9eec1d
sh gromacs.sh
cd ..

echo "End of build script"
echo
echo "See runbench.sh for execution..."
