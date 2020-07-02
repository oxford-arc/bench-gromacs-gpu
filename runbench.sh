#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=5
#SBATCH --gres=gpu:1
#SBATCH --time=01:00:00


# ARC Specifics
#
#module purge
#module load /system/arcus/modules/singularity/3.5.3
#
#------------------- END --------------------------

export RESULTS=$PWD/results.txt

rm -f $RESULTS
touch $RESULTS

for d in gromacs/*
do
        echo "--------------------------------------------------------" >> $RESULTS
        echo $d >> $RESULTS
        cd $d
        singularity run --nv -B ${PWD}:/host_pwd --pwd /host_pwd ../../image/gromacs-2018.2.simg gmx mdrun -deffnm benchmark -ntmpi 1 -ntomp 5
        grep -C 3 "CPU info:" benchmark.log >> $RESULTS
        grep -C 3 "GPU info:" benchmark.log >> $RESULTS
        grep -C 2 "Performance" benchmark.log >> $RESULTS
        echo "--------------------------- END ------------------------" >> $RESULTS
        cd ../..
done

