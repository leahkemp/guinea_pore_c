#!/bin/bash

#SBATCH --partition prod
#SBATCH --job-name=03_poretools
#SBATCH --time=00:30:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 16
#SBATCH --mem 10G
#SBATCH --output="./logs/03_initial_qc/slurm-%j-%x.out"

# configure file path to project directory
project_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c"

# configure file path to data directory
data_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/data"

# remove any old outputs of this script to avoid results being written twice to a file
#rm -rf $project_dir/results/03_initial_qc/*

# create results directory if it doesn't yet exist
mkdir -p $project_dir/results/03_initial_qc/pycoqc/

singularity run \
-B $data_dir \
-B $project_dir \
docker://biocontainers/poretools:v0.6.0dfsg-3-deb_cv1 \
poretools 
