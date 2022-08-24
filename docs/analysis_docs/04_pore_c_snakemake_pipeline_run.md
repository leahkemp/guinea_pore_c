# 04 - pore-c-snakemake pipeline run

Created: 2022/08/10 15:03:33
Last modified: 2022/08/24 16:47:26

- **Aim:** This document documents/describes running the [pore-c-snakemake pipeline](https://github.com/nanoporetech/Pore-C-Snakemake)
- **Prerequisite software:** [slurm](https://slurm.schedmd.com/overview.html) v20.11.6, [conda](https://docs.conda.io/en/latest/) v4.13.0, [mamba](https://mamba.readthedocs.io/en/latest/index.html) v0.24.0, [GNU coreutils](https://www.gnu.org/software/coreutils/), [git](https://git-scm.com/) v1.8.3.1
- **OS:** ORAC (CentOS Linux) (ESR production network)

## Table of contents

- [04 - pore-c-snakemake pipeline run](#04---pore-c-snakemake-pipeline-run)
  - [Table of contents](#table-of-contents)
  - [Get reference genome](#get-reference-genome)
  - [Run pore-c pipeline](#run-pore-c-pipeline)
  - [Move pipeline results away from pipeline](#move-pipeline-results-away-from-pipeline)

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

*Note. one of the pipeline steps errored out with the following error:*

```bash
Calculating norms for zoom FRAG_2
Calculating norms for zoom FRAG_1Exception in thread "main" java.lang.OutOfMemoryError: Java heap space
	at java.base/java.util.Arrays.copyOf(Arrays.java:3537)
	at java.base/java.io.ByteArrayOutputStream.ensureCapacity(ByteArrayOutputStream.java:100)
	at java.base/java.io.ByteArrayOutputStream.write(ByteArrayOutputStream.java:111)
	at org.broad.igv.tdf.BufferedByteWriter.putLong(BufferedByteWriter.java:133)
	at org.broad.igv.tdf.BufferedByteWriter.putDouble(BufferedByteWriter.java:115)
	at juicebox.tools.utils.norm.NormVectorUpdater.putArrayValuesIntoBuffer(NormVectorUpdater.java:59)
	at juicebox.tools.utils.norm.NormVectorUpdater.updateNormVectorIndexWithVector(NormVectorUpdater.java:46)
	at juicebox.tools.utils.norm.NormalizationVectorUpdater.updateExpectedValueCalculationForChr(NormalizationVectorUpdater.java:198)
	at juicebox.tools.utils.norm.NormalizationVectorUpdater.buildScale(NormalizationVectorUpdater.java:214)
	at juicebox.tools.utils.norm.NormalizationVectorUpdater.updateHicFile(NormalizationVectorUpdater.java:126)
	at juicebox.tools.clt.old.PreProcessing.run(PreProcessing.java:128)
	at juicebox.tools.HiCTools.main(HiCTools.java:94)
```

Sounds like it ran out of java memory, will resolve later because it affected only one file I don't need right now

## Move pipeline results away from pipeline

This couldn't be done in the pipeline so manually doing here, this is for ease of use when pushing to github repo

```bash
mkdir -p ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/
mv /NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/results/* ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/
mv /NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/pipeline_dag.png ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/
mv /NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/pipeline_rulegraph.png ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/
```
