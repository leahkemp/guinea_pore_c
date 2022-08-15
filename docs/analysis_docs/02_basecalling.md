# 02 - Basecalling

Created: 2022/08/11 11:02:25
Last modified: 2022/08/16 11:35:40

- **Aim:** This document documents/describes basecalling for this project
- **Prerequisite software:** [slurm](https://slurm.schedmd.com/overview.html) v20.11.6, [GNU coreutils](https://www.gnu.org/software/coreutils/), guppy v6.0.1
- **OS:** ORAC (CentOS Linux) (ESR production network)

## Table of contents

- [02 - Basecalling](#02---basecalling)
  - [Table of contents](#table-of-contents)
  - [Get reference genome](#get-reference-genome)
  - [Basecalling](#basecalling)

## Get reference genome

Run bash script to get the reference guinea pig genome. See my script at [./scripts/02_basecalling/01_get_reference.sh](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/02_basecalling/01_get_reference.sh) and my conda env file at [./scripts/envs/conda.wget.1.21.3.yml](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/envs/conda.wget.1.21.3.yml)

```bash
sbatch ./scripts/02_basecalling/01_get_reference.sh
```

## Basecalling

The information on the flowcell and kit used in the basecalling script was found in the file at `/mnt/cavia_porcellus/genome_sequencing/guinea_pore_c/20220804_0847_MN34909_FAQ91555_3fb67c88/report_FAQ91555_20220804_0852_3fb67c88.md`

Run bash script to get the run base-calling. See my script at [./scripts/02_basecalling/02_basecalling.sh](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/02_basecalling/02_basecalling.sh)

```bash
sbatch ./scripts/02_basecalling/02_basecalling.sh
```
