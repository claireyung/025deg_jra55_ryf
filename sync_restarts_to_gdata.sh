#!/bin/bash
#PBS -q copyq
#PBS -l ncpus=1
#PBS -l wd
#PBS -l walltime=2:00:00,mem=2GB
#PBS -P v45
#PBS -N restarts_to_gdata
#PBS -l storage=gdata/hh5+gdata/ik11+scratch/e14+gdata/ua8

source sync_output_to_gdata.sh # to define GDATADIR and cd archive

rsync -vrltoD --safe-links restart* ${GDATADIR}
