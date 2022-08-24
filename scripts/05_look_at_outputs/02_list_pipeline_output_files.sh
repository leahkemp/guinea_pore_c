#!/bin/bash

#SBATCH --partition prod
#SBATCH --job-name=02_list_pipeline_output_files.sh
#SBATCH --time=00:02:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 1
#SBATCH --mem 1G
#SBATCH --output="./logs/05_look_at_outputs/slurm-%j-%x.out"

# configure file path to project directory
project_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c"

# remove any old outputs of this script to avoid results being written twice to a file
rm -rf $project_dir/results/05_look_at_outputs/pipeline_output_files.txt

# list the pipeline output files created
echo ""
echo "Listing the pipeline output files created"
echo ""

tree -hv $project_dir/results/04_pore_c_snakemake_pipeline_run/pipeline_run/ > $project_dir/results/05_look_at_outputs/pipeline_output_files.txt
