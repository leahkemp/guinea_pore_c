#!/bin/bash

#SBATCH --partition prod
#SBATCH --job-name=02_pycoqc
#SBATCH --time=00:30:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 1
#SBATCH --mem 1G
#SBATCH --output="./logs/03_initial_qc/slurm-%j-%x.out"

# configure file path to project directory
project_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c"

# configure file path to initial sequencing reports directory
seq_reports_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/seq_reports"

# configure file path to temporary directory
tmp_dir="/NGS/clinicalgenomics/tmp/guinea_pore_c"

# remove any old outputs of this script to avoid results being written twice to a file
rm -rf $project_dir/results/03_initial_qc/*

# create results directory if it doesn't yet exist
mkdir -p $project_dir/results/03_initial_qc/pycoqc/

# run pycoQC on initial basecalling
echo ""
echo "Running pycoQC on initial basecalling"
echo ""

singularity run \
-B $seq_reports_dir \
-B $project_dir \
docker://nanozoo/pycoqc:2.5.0.23--320ecc7 \
pycoQC \
--summary_file $seq_reports_dir/sequencing_summary_FAQ91555.txt \
--html_outfile $project_dir/results/03_initial_qc/pycoqc/pycoqc_initial_basecalling.html

# run pycoQC on new basecalling
echo ""
echo "Running pycoQC on new basecalling"
echo ""

singularity run \
-B $project_dir \
docker://nanozoo/pycoqc:2.5.0.23--320ecc7 \
pycoQC \
--summary_file $project_dir/results/02_basecalling/basecalling/sequencing_summary.txt \
--html_outfile $project_dir/results/03_initial_qc/pycoqc/pycoqc.html
