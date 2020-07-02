#! /bin/bash
#
#
# Build image from docker file. Requires "sudo" rights.
#
export SINGULARITY_CACHEDIR=$(mktemp -d /tmp/cache.XXXXX)
export SINGULARITY_TARGET=$(mktemp -d /tmp/target.XXXXX)
export DOCKERFILE=docker://nvcr.io/hpc/gromacs:2018.2
export TARGET=gromacs-2018.2.simg

#
# ARC Specifics
#
# module load /system/arcus/modules/singularity/3.5.3
#
# --------------- END -----------------------------

mkdir -p $SINGULARITY_CACHEDIR $SINGULARITY_TARGET
chmod 777 $SINGULARITY_CACHEDIR $SINGULARITY_TARGET

sudo -E singularity build $SINGULARITY_TARGET/$TARGET $DOCKERFILE

cp $SINGULARITY_TARGET/$TARGET .

sudo rm -rf $SINGULARITY_CACHEDIR $SINGULARITY_TARGET

