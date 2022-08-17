#!/bin/bash

#SBATCH --partition prod
#SBATCH --job-name=01_get_reference
#SBATCH --time=00:20:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 1
#SBATCH --mem 1G
#SBATCH --output="./logs/04_pore_c_snakemake_pipeline_run/slurm-%j-%x.out"

# configure file path to project directory
project_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c"

# create results directory if it doesn't yet exist
mkdir -p $project_dir/results/04_pore_c_snakemake_pipeline_run/reference_genome/

# set the shell to be used by conda for this script (and re-start shell to implement changes)
echo ""
echo "Configuring conda"
echo ""

conda init bash
source ~/.bashrc

# create conda environment with wget installed and activate it
echo ""
echo "Creating conda environment with wget installed"
echo ""

mamba env create --force -f $project_dir/scripts/envs/conda.wget.1.21.3.yml
conda activate wget

# get guinea pig reference genome, download if it doesn't already exist
echo ""
echo "Getting guinea pig reference genome"
echo ""

if [ ! -f "$project_dir/results/04_pore_c_snakemake_pipeline_run/reference_genome/GCF_000151735.1_Cavpor3.0_genomic.fna.gz" ]; then
    wget https://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Cavia_porcellus/latest_assembly_versions/GCF_000151735.1_Cavpor3.0/GCF_000151735.1_Cavpor3.0_genomic.fna.gz -P $project_dir/results/04_pore_c_snakemake_pipeline_run/reference_genome/
fi
