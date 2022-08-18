#!/bin/bash

#SBATCH --partition prod
#SBATCH --job-name=02_merge_fastq
#SBATCH --time=00:30:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 1
#SBATCH --mem 1G
#SBATCH --output="./logs/02_basecalling/slurm-%j-%x.out"

# configure file path to project directory
project_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c"

# remove any old outputs of this script to avoid results being written twice to a file
rm -rf $project_dir/results/02_basecalling/merge_fastq/

# create results directory if it doesn't yet exist
mkdir -p $project_dir/results/02_basecalling/merge_fastq/

# merge fastq files
echo ""
echo "Merging fastq files"
echo ""

zcat $project_dir/results/02_basecalling/basecalling/pass/* > $project_dir/results/02_basecalling/merge_fastq/G7624.fastq

# compress merged fastq file
echo ""
echo "Compressing merged fastq file"
echo ""

gzip $project_dir/results/02_basecalling/merge_fastq/G7624.fastq
