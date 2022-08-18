# 03 - Initial QC

Created: 2022/08/10 15:30:51
Last modified: 2022/08/18 13:17:16

- **Aim:** This document documents/describes initial QC for this project
- **Prerequisite software:** [slurm](https://slurm.schedmd.com/overview.html) v20.11.6, [singularity](https://docs.sylabs.io/guides/3.1/user-guide/index.html) v3.7.2-1.el7, [GNU coreutils](https://www.gnu.org/software/coreutils/)
- **OS:** ORAC (CentOS Linux) (ESR production network)

## Table of contents

- [03 - Initial QC](#03---initial-qc)
  - [Table of contents](#table-of-contents)
  - [Merge initial sequencing summary reports](#merge-initial-sequencing-summary-reports)
  - [pycoQC](#pycoqc)

## Merge initial sequencing summary reports

The initial sequencing summary reports are in two files, but are actually from the same sample and run, therefore we will merge them for downstream QC

Run bash script to merge the initial sequencing summary reports. See my script at [./scripts/03_initial_qc/01_merge_summary_reports.sh](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/03_initial_qc/01_merge_summary_reports.sh)

```bash
sbatch ./scripts/03_initial_qc/01_merge_summary_reports.sh
```

## pycoQC

Run bash script to get the run pycoQC. See my script at [./scripts/03_initial_qc/02_pycoqc.sh](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/03_initial_qc/02_pycoqc.sh)

```bash
sbatch ./scripts/03_initial_qc/02_pycoqc.sh
```

https://github.com/yfukasawa/LongQC

https://poretools.readthedocs.io/en/latest/

https://github.com/nanoporetech/pomoxis
