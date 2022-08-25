#!/bin/bash

#SBATCH --partition prod
#SBATCH --job-name=02_pore_c_snakemake_pipeline_run
#SBATCH --time=36:00:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 24
#SBATCH --mem 80G
#SBATCH --output="./logs/04_pore_c_snakemake_pipeline_run/slurm-%j-%x.out"

# configure file path to project directory
project_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c"

# remove any old outputs of this script to avoid results being written twice to a file
rm -rf $project_dir/results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/

# get pore-c snakemake pipeline
echo ""
echo "Getting pore-c snakemake pipeline"
echo ""

git clone https://github.com/nanoporetech/Pore-C-Snakemake.git $project_dir/results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/
cd $project_dir/results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/
git checkout tags/0.3.0
cd $project_dir/

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

#mamba env create --force -f $project_dir/results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/environment.yml
conda activate pore-c-snakemake

# generate pore-c snakemake pipeline DAG
echo ""
echo "Generating pore-c snakemake pipeline DAG"
echo ""

cd $project_dir/results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/

snakemake \
--configfile $project_dir/config/04_pore_c_snakemake_pipeline_run/config.yaml \
--dag | dot -Tpng > $project_dir/results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/pipeline_dag.png

# generate pore-c snakemake pipeline rulegraph
echo ""
echo "Generating pore-c snakemake pipeline rulegraph"
echo ""

snakemake \
--configfile $project_dir/config/04_pore_c_snakemake_pipeline_run/config.yaml \
--rulegraph | dot -Tpng > $project_dir/results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/pipeline_rulegraph.png

# run pore-c snakemake pipeline
echo ""
echo "Running pore-c snakemake pipeline"
echo ""

snakemake \
--use-conda \
test \
--cores 24 \
--configfile $project_dir/config/04_pore_c_snakemake_pipeline_run/config.yaml \
--conda-frontend mamba
