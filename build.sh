#! /bin/bash
#
echo "Building GROMACS benchmark environment"

echo "Extracting HECBIOSIM benchmarks..."
wget http://www.hecbiosim.ac.uk/gromacs-benchmarks/send/2-software/8-gromacs-bench 
mv 8-gromacs-bench hecbiosim-gromacs.tgz
tar xzf hecbiosim-gromacs.tgz

echo "Downloading Singularity image..."
cd image
singularity pull library://oxford-arc/default/gromacs2018.2-test

# If download above fails use the script below to build.
# sh gromacs.sh

cd ..

echo "End of build script"
echo
echo "See runbench.sh for execution..."
