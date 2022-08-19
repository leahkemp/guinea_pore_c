#!/bin/bash

#SBATCH --partition prod
#SBATCH --job-name=01_look_at_parquet_files
#SBATCH --time=00:05:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 1
#SBATCH --mem 1G
#SBATCH --output="./logs/05_look_at_outputs/slurm-%j-%x.out"

# configure file path to project directory
project_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c"

# remove any old outputs of this script to avoid results being written twice to a file
rm -rf $project_dir/results/05_look_at_outputs/part.0.head.txt

# set the shell to be used by conda for this script (and re-start shell to implement changes)
echo ""
echo "Configuring conda"
echo ""

conda init bash
source ~/.bashrc

# create conda environment with parquet-cli installed and activate it
echo ""
echo "Creating conda environment with parquet-cli installed"
echo ""

mamba env create --force -f $project_dir/scripts/envs/conda.parquet-cli.yml
conda activate parquet-cli

# have a look at the head of one of the parquet files
echo ""
echo "Having a look at the head of one of the parquet files"
echo ""

parq \
$project_dir/results/04_pore_c_snakemake_pipeline_run/pipeline_run/merged_contacts/NlaIII_run01_Cavpor3.0_unphased.contacts.parquet/part.0.parquet \
--head 10 > $project_dir/results/05_look_at_outputs/part.0.head.txt
