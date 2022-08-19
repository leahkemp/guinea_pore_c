# 05 - Look at outputs

Created: 2022/08/10 15:30:51
Last modified: 2022/08/19 14:08:45

- **Aim:** This document documents/describes looking at the outputs of the analyses for this project
- **Prerequisite software:** [conda](https://docs.conda.io/en/latest/) v4.13.0, [mamba](https://mamba.readthedocs.io/en/latest/index.html) v0.24.0, [GNU coreutils](https://www.gnu.org/software/coreutils/)
- **OS:** ORAC (CentOS Linux) (ESR production network)

## Table of contents

- [05 - Look at outputs](#05---look-at-outputs)
  - [Table of contents](#table-of-contents)
  - [View parquet files](#view-parquet-files)

## View parquet files

The main output files are at `./results/04_pore_c_snakemake_pipeline_run/pipeline_run/merged_contacts/NlaIII_run01_Cavpor3.0_unphased.contacts.parquet`. See the [description of the output files](https://github.com/nanoporetech/Pore-C-Snakemake/#4-output-files)

Run bash script to have a look at the top of one of the parquet files. See my script at [./scripts/05_look_at_outputs/01_look_at_parquet_files.sh](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/05_look_at_outputs/01_look_at_parquet_files.sh) and my conda enc file at [./scripts/envs/conda.parquet-cli.yml](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/envs/conda.parquet-cli.yml)

```bash
sbatch ./scripts/05_look_at_outputs/01_look_at_parquet_files.sh
```
