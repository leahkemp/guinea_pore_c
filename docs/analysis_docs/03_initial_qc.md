# 03 - Initial QC

Created: 2022/08/10 15:30:51
Last modified: 2022/08/15 17:26:01

- **Aim:** This document documents/describes initial QC for this project
- **Prerequisite software:** [slurm](https://slurm.schedmd.com/overview.html) v20.11.6, [singularity](https://docs.sylabs.io/guides/3.1/user-guide/index.html) v3.7.2-1.el7, [conda](https://docs.conda.io/en/latest/) v4.13.0, [mamba](https://mamba.readthedocs.io/en/latest/index.html) v0.24.0, [GNU coreutils](https://www.gnu.org/software/coreutils/)
- **OS:** ORAC (CentOS Linux) (ESR production network)

## Table of contents

- [03 - Initial QC](#03---initial-qc)
  - [Table of contents](#table-of-contents)
  - [Initial QC](#initial-qc)
    - [pycoQC](#pycoqc)

## Initial QC

### pycoQC

Run bash script to get the run pycoQC. See my script at [./scripts/03_initial_qc/01_pycoqc.sh](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/03_initial_qc/01_pycoqc.sh) and my conda env file at [./scripts/envs/conda.pycoqc.2.5.2.yml](https://github.com/leahkemp/guinea_pore_c/blob/main/scripts/envs/conda.pycoqc.2.5.2.yml)

```bash
sbatch ./scripts/02_basecalling/02_basecalling.sh
```

https://github.com/yfukasawa/LongQC

https://poretools.readthedocs.io/en/latest/

https://github.com/nanoporetech/pomoxis