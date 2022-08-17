#!/bin/bash

#SBATCH --partition prod
#SBATCH --job-name=02_pore_c_snakemake_pipeline_run
#SBATCH --time=24:00:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 24
#SBATCH --mem 80G
#SBATCH --output="./logs/04_pore_c_snakemake_pipeline_run/slurm-%j-%x.out"

# remove any old outputs of this script to avoid results being written twice to a file
rm -rf ./results/04_pore_c_snakemake_pipeline_run/pore_c_snakemake_pipeline_run/
rm -rf ./results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/

# create results directory if it doesn't yet exist
mkdir -p ./results/04_pore_c_snakemake_pipeline_run/pore_c_snakemake_pipeline_run/

# get pore-c snakemake pipeline
echo ""
echo "Getting pore-c snakemake pipeline"
echo ""

git clone https://github.com/nanoporetech/Pore-C-Snakemake.git ./results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/
cd ./results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/
git checkout tags/0.3.0
cd ../../../

# set the shell to be used by conda for this script (and re-start shell to implement changes)
echo ""
echo "Configuring conda"
echo ""

conda init bash
source ~/.bashrc

# create conda environment with pipeline dependencies installed and activate it
echo ""
echo "Creating conda environment with pipeline dependencies installed"
echo ""

mamba env create --force -f ./results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/environment.yml
conda activate pore-c-snakemake

# generate pore-c snakemake pipeline DAG
echo ""
echo "Generating pore-c snakemake pipeline DAG"
echo ""

cd ./results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/

snakemake \
--configfile ../../../config/04_pore_c_snakemake_pipeline_run/config.yaml \
--dag | dot -Tpng > ../pore_c_snakemake_pipeline_run/pipeline_dag.png

# generate pore-c snakemake pipeline rulegraph
echo ""
echo "Generating pore-c snakemake pipeline rulegraph"
echo ""

snakemake \
--configfile ../../../config/04_pore_c_snakemake_pipeline_run/config.yaml \
--rulegraph | dot -Tpng > ../pore_c_snakemake_pipeline_run/pipeline_rulegraph.png

# run pore-c snakemake pipeline
echo ""
echo "Running pore-c snakemake pipeline"
echo ""

snakemake \
--configfile ../../../config/04_pore_c_snakemake_pipeline_run/config.yaml \
--use-conda \
--conda-frontend mamba \
--cores 24
