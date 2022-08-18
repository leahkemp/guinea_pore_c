# 02 - Basecalling

Created: 2022/08/11 11:02:25
Last modified: 2022/08/18 13:13:27

- **Aim:** This document documents/describes basecalling for this project
- **Prerequisite software:** [slurm](https://slurm.schedmd.com/overview.html) v20.11.6, [GNU coreutils](https://www.gnu.org/software/coreutils/), guppy v6.0.1
- **OS:** ORAC (CentOS Linux) (ESR production network)

## Table of contents

- [02 - Basecalling](#02---basecalling)
  - [Table of contents](#table-of-contents)
  - [Basecalling](#basecalling)
  - [Merge fastq files](#merge-fastq-files)

## Basecalling

The flowcell and kit information used in the basecalling script was found in the sequencing report file `report_FAQ91555_20220804_0852_3fb67c88.md`

Run bash script to get the run basecalling. See my script at [./scripts/02_basecalling/01_basecalling.sh](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/02_basecalling/01_basecalling.sh)

```bash
sbatch ./scripts/02_basecalling/01_basecalling.sh
```

## Merge fastq files

Run bash script to get the merge the fastq files. See my script at [./scripts/02_basecalling/02_merge_fastq.sh](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/02_basecalling/02_merge_fastq.sh)

```bash
sbatch ./scripts/02_basecalling/02_merge_fastq.sh
```
