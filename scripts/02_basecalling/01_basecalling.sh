#!/bin/bash

#SBATCH --partition gpu
#SBATCH --job-name=01_basecalling
#SBATCH --time=12:00:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 32
#SBATCH --mem 10G
#SBATCH --output="./logs/02_basecalling/slurm-%j-%x.out"

# configure file path to project directory
project_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c"

# configure file path to data directory
data_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/data"

# remove any old outputs of this script to avoid results being written twice to a file
rm -rf $project_dir/results/02_basecalling/*

# create results directory if it doesn't yet exist
mkdir -p $project_dir/results/02_basecalling/basecalling/

# run guppy
echo ""
echo "Running guppy basecalling"
echo ""

singularity run \
-B $data_dir \
-B $project_dir \
docker://nanozoo/guppy_gpu:6.1.7-1--ef8146f \
guppy_basecaller \
--input_path $data_dir \
--save_path $project_dir/results/02_basecalling/basecalling/ \
--flowcell FLO-MIN106 \
--kit SQK-LSK110 \
--device auto \
--recursive \
--compress_fastq \
--fast5_out
