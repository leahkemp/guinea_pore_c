#!/bin/bash

#SBATCH --partition prod
#SBATCH --job-name=02_basecalling
#SBATCH --time=24:00:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 32
#SBATCH --mem 10G
#SBATCH --output="./logs/02_basecalling/slurm-%j-%x.out"

# configure file path to project directory
project_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c"

# configure file path to data directory
data_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/data"

# configure file path to software directory
software_dir="/opt/bioinf/guppy/6.0.1/ont-guppy-cpu"

# remove any old outputs of this script to avoid results being written twice to a file
rm -rf $project_dir/results/02_basecalling/*

# create results directory if it doesn't yet exist
mkdir -p $project_dir/results/02_basecalling/basecalling/

# run guppy
echo ""
echo "Running guppy basecalling"
echo ""

$software_dir/bin/guppy_basecaller \
--config $software_dir/data/dna_r9.4.1_450bps_sup.cfg \
--input_path $data_dir \
--save_path $project_dir/results/02_basecalling/basecalling/ \
--chunk_size 1000 \
--chunks_per_runner 20 \
--min_qscore 7 \
--records_per_fastq 4000 \
--num_callers 32 \
--recursive \
--bam_out \
--compress_fastq
