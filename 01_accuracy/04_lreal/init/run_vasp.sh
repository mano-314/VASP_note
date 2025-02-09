#!/bin/bash -l
#SBATCH -p compute
#SBATCH -N 1
#SBATCH --ntasks-per-node=128
#SBATCH -t 12:00:00
#SBATCH -J dft
#SBATCH -A pv811002

module purge
module load intel/2023.1.0
module load libfabric/1.15.2.0
vasp_path=/project/pv811002-mofmlp/src/vasp.6.4.2

export OMP_NUM_THREADS=1
ulimit -s unlimited
cd $SLURM_SUBMIT_DIR

srun ${vasp_path}/vasp_std
