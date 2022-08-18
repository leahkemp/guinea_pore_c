# 04 - pore-c-snakemake pipeline run

Created: 2022/08/10 15:03:33
Last modified: 2022/08/18 13:18:01

- **Aim:** This document documents/describes running the [pore-c-snakemake pipeline](https://github.com/nanoporetech/Pore-C-Snakemake)
- **Prerequisite software:** [slurm](https://slurm.schedmd.com/overview.html) v20.11.6, [conda](https://docs.conda.io/en/latest/) v4.13.0, [mamba](https://mamba.readthedocs.io/en/latest/index.html) v0.24.0, [GNU coreutils](https://www.gnu.org/software/coreutils/), [git](https://git-scm.com/) v1.8.3.1
- **OS:** ORAC (CentOS Linux) (ESR production network)

## Table of contents

- [04 - pore-c-snakemake pipeline run](#04---pore-c-snakemake-pipeline-run)
  - [Table of contents](#table-of-contents)
  - [Get reference genome](#get-reference-genome)
  - [Run pore-c pipeline](#run-pore-c-pipeline)

## Get reference genome

Run bash script to get the reference guinea pig genome. See my script at [./scripts/04_pore_c_snakemake_pipeline_run/01_get_reference.sh](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/04_pore_c_snakemake_pipeline_run/01_get_reference.sh) and my conda env file at [./scripts/envs/conda.wget.1.21.3.yml](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/envs/conda.wget.1.21.3.yml)

```bash
sbatch ./scripts/04_pore_c_snakemake_pipeline_run/01_get_reference.sh
```

## Run pore-c pipeline

Run bash script to run [pore-c](https://github.com/nanoporetech/pore-c/) on all samples. See my script at [./scripts/04_pore_c_snakemake_pipeline_run/02_pore_c_snakemake_pipeline_run.sh](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/04_pore_c_snakemake_pipeline_run/02_pore_c_snakemake_pipeline_run.sh) and my configuration files at [./config/04_pore_c_snakemake_pipeline_run/](https://github.com/leahkemp/guinea_pore_c/blob/main/config/04_pore_c_snakemake_pipeline_run/)

```bash
sbatch ./scripts/04_pore_c_snakemake_pipeline_run/02_pore_c_snakemake_pipeline_run.sh
```
