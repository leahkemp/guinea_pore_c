#!/bin/bash

#SBATCH --partition prod
#SBATCH --job-name=01_merge_summary_reports
#SBATCH --time=00:05:00
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 1
#SBATCH --mem 1G
#SBATCH --output="./logs/03_initial_qc/slurm-%j-%x.out"

# configure file path to project directory
project_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c"

# configure file path to initial sequencing reports directory
seq_reports_dir="/NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/seq_reports"

# remove any old outputs of this script to avoid results being written twice to a file
rm -rf $seq_reports_dir/sequencing_summary_FAQ91555.txt

echo ""
echo "Merging initial sequencing summary reports"
echo ""

# merge initial sequencing summary reports
cat /NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/seq_reports/sequencing_summary_FAQ91555_ab35bd75.txt > $seq_reports_dir/sequencing_summary_FAQ91555.txt
tail -n +2 /NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/seq_reports/sequencing_summary_FAQ91555_05abd159.txt >> $seq_reports_dir/sequencing_summary_FAQ91555.txt
