# 07 - Clean up

- [07 - Clean up](#07---clean-up)
  - [Remove unnecessary files before backup](#remove-unnecessary-files-before-backup)
  - [Move to backup location](#move-to-backup-location)
  - [Output files](#output-files)

## Remove unnecessary files before backup

*Work in progress*

```bash
rm -rf ./config/

rm -r ./data/

rm -rf ./docs/

rm -rf ./logs/

rm -rf ./results/02_basecalling/

rm -rf ./results/03_initial_qc/

rm -rf ./results/04_pore_c_snakemake_pipeline_run/reference_genome/

rm -rf ./results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/

rm -rf ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/basecall/

rm -rf ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/benchmarks/

rm -rf ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/juicebox/juicer_tools.jar

rm -rf ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/logs/

rm -rf ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/mapping/*.txt

rm -rf ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/merged_contacts/NlaIII_run01_Cavpor3.0_unphased.concatemer_summary.csv

rm -rf ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/merged_contacts/NlaIII_run01_Cavpor3.0_unphased.fofn.txt

rm -rf ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/virtual_digest/NlaIII_Cavpor3.0.vd.catalog.yaml

rm -rf ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/pipeline_dag.png

rm -rf ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/pipeline_rulegraph.png

rm -rf ./results/README.md

rm -rf ./results/05_look_at_outputs/

rm -rf ./results/06_data_visualisation/

rm -rf ./scripts/

rm -rf ./seq_reports/

rm -rf ./index.md

rm -rf ./_config.yml

rm -rf ./.gitignore

rm -rf ./.git/

```

## Move to backup location

```bash
cd /NGS/scratch/KSCBIOM/HumanGenomics/
mv /NGS/scratch/KSCBIOM/HumanGenomics/guinea_pore_c/ /NGS/clinicalgenomics/archive/2022/analyses/
```

## Output files

Additional files remaining after cleaning up (everything kept and *not* included in the github repo)

```bash
cd /NGS/clinicalgenomics/archive/2022/analyses/guinea_pore_c/

ls -lhv ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/mapping/
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
total 64G
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.5G Aug 23 20:38 NlaIII_run01_batch1_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 20:38 NlaIII_run01_batch1_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.5G Aug 23 19:09 NlaIII_run01_batch2_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 19:09 NlaIII_run01_batch2_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.6G Aug 23 18:21 NlaIII_run01_batch3_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 18:21 NlaIII_run01_batch3_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.5G Aug 23 18:48 NlaIII_run01_batch4_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 18:48 NlaIII_run01_batch4_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.5G Aug 23 18:13 NlaIII_run01_batch5_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 18:13 NlaIII_run01_batch5_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.5G Aug 23 19:47 NlaIII_run01_batch6_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 19:47 NlaIII_run01_batch6_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.4G Aug 23 21:04 NlaIII_run01_batch7_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 21:04 NlaIII_run01_batch7_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.4G Aug 23 20:40 NlaIII_run01_batch8_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 20:40 NlaIII_run01_batch8_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.5G Aug 23 18:40 NlaIII_run01_batch9_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 18:40 NlaIII_run01_batch9_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.5G Aug 23 20:14 NlaIII_run01_batch10_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 20:14 NlaIII_run01_batch10_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.5G Aug 23 19:37 NlaIII_run01_batch11_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 19:37 NlaIII_run01_batch11_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.5G Aug 23 20:04 NlaIII_run01_batch12_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 20:04 NlaIII_run01_batch12_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.5G Aug 23 19:20 NlaIII_run01_batch13_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 19:20 NlaIII_run01_batch13_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.9G Aug 23 13:59 NlaIII_run01_batch14_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 13:59 NlaIII_run01_batch14_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.8G Aug 23 15:02 NlaIII_run01_batch15_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 15:02 NlaIII_run01_batch15_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.8G Aug 23 16:48 NlaIII_run01_batch16_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 16:48 NlaIII_run01_batch16_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.8G Aug 23 15:39 NlaIII_run01_batch17_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 15:39 NlaIII_run01_batch17_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.7G Aug 23 17:48 NlaIII_run01_batch18_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 17:48 NlaIII_run01_batch18_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.9G Aug 23 14:29 NlaIII_run01_batch19_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 14:29 NlaIII_run01_batch19_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.9G Aug 23 13:56 NlaIII_run01_batch20_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 13:56 NlaIII_run01_batch20_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.9G Aug 23 14:36 NlaIII_run01_batch21_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 14:36 NlaIII_run01_batch21_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.8G Aug 23 16:07 NlaIII_run01_batch22_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 16:07 NlaIII_run01_batch22_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.8G Aug 23 15:34 NlaIII_run01_batch23_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 15:34 NlaIII_run01_batch23_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.8G Aug 23 15:09 NlaIII_run01_batch24_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 15:09 NlaIII_run01_batch24_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.7G Aug 23 16:37 NlaIII_run01_batch25_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 16:37 NlaIII_run01_batch25_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.8G Aug 23 16:16 NlaIII_run01_batch26_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 16:16 NlaIII_run01_batch26_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.8G Aug 23 17:24 NlaIII_run01_batch27_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 17:24 NlaIII_run01_batch27_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.7G Aug 23 17:52 NlaIII_run01_batch28_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 17:52 NlaIII_run01_batch28_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.7G Aug 23 17:18 NlaIII_run01_batch29_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.4M Aug 23 17:18 NlaIII_run01_batch29_Cavpor3.0.coord_sort.bam.bai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 739M Aug 23 20:53 NlaIII_run01_batch30_Cavpor3.0.coord_sort.bam
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 2.8M Aug 23 20:53 NlaIII_run01_batch30_Cavpor3.0.coord_sort.bam.bai
```

</details>
<br/>

```bash
ls -lhv ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/assembly/
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
total 4.0G
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 3.0G Aug 23 21:29 NlaIII_run01_Cavpor3.0_unphased.salsa.bed
```

</details>
<br/>

```bash
ls -lhv ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/matrix/
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
total 371M
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  43M Aug 23 21:21 NlaIII_run01_Cavpor3.0_unphased.matrix.cool
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 234M Aug 23 21:26 NlaIII_run01_Cavpor3.0_unphased.matrix.mcool
```

</details>
<br/>

```bash
ls -lhv ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/merged_contacts/
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
total 82M
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  62M Aug 23 21:24 NlaIII_run01_Cavpor3.0_unphased.concatemers.parquet
drwxrws--- 2 lkemp SEC_lab_KSCBIOM 1.1K Aug 23 21:14 NlaIII_run01_Cavpor3.0_unphased.contacts.parquet
```

</details>
<br/>

```bash
ls -lhv ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/merged_contacts/NlaIII_run01_Cavpor3.0_unphased.contacts.parquet/
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
total 1.6G
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  38M Aug 23 21:14 part.0.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  38M Aug 23 21:14 part.1.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  39M Aug 23 21:14 part.2.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  38M Aug 23 21:14 part.3.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  39M Aug 23 21:14 part.4.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  38M Aug 23 21:14 part.5.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  36M Aug 23 21:14 part.6.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  36M Aug 23 21:14 part.7.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  39M Aug 23 21:14 part.8.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  38M Aug 23 21:14 part.9.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  38M Aug 23 21:14 part.10.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  38M Aug 23 21:14 part.11.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  38M Aug 23 21:14 part.12.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  46M Aug 23 21:14 part.13.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  44M Aug 23 21:14 part.14.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  43M Aug 23 21:14 part.15.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  43M Aug 23 21:14 part.16.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  42M Aug 23 21:14 part.17.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  47M Aug 23 21:14 part.18.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  46M Aug 23 21:14 part.19.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  45M Aug 23 21:14 part.20.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  45M Aug 23 21:14 part.21.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  43M Aug 23 21:14 part.22.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  44M Aug 23 21:14 part.23.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  42M Aug 23 21:14 part.24.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  43M Aug 23 21:14 part.25.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  44M Aug 23 21:14 part.26.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  41M Aug 23 21:14 part.27.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  43M Aug 23 21:14 part.28.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  15M Aug 23 21:14 part.29.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  19K Aug 23 21:14 _common_metadata
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 140K Aug 23 21:14 _metadata
```

</details>
<br/>

```bash
ls -lhv ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/pairs/
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
total 3.5G
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 537M Aug 23 21:33 NlaIII_run01_Cavpor3.0_unphased.sorted.pairs.gz
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  23M Aug 23 21:33 NlaIII_run01_Cavpor3.0_unphased.sorted.pairs.gz.px2
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 2.1G Aug 23 21:31 NlaIII_run01_Cavpor3.0_unphased.unsorted.pairs
```

</details>
<br/>

```bash
ls -lhv ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/refgenome/
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
total 9.4G
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  71K Aug 23 12:09 Cavpor3.0.rg.catalog.yaml
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  55K Aug 23 12:09 Cavpor3.0.rg.chromsizes
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 2.6G Aug 23 12:09 Cavpor3.0.rg.fa
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 962K Aug 23 13:09 Cavpor3.0.rg.fa.amb
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 468K Aug 23 13:09 Cavpor3.0.rg.fa.ann
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 2.6G Aug 23 13:22 Cavpor3.0.rg.fa.bwt
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 100K Aug 23 12:09 Cavpor3.0.rg.fa.fai
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 650M Aug 23 13:09 Cavpor3.0.rg.fa.pac
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 1.3G Aug 23 13:22 Cavpor3.0.rg.fa.sa
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  55K Aug 23 12:09 Cavpor3.0.rg.metadata.csv
```

</details>
<br/>

```bash
ls -lhv ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/virtual_digest/
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
total 214M
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 160M Aug 23 12:11 NlaIII_Cavpor3.0.vd.fragments.parquet
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 140K Aug 23 12:11 NlaIII_Cavpor3.0.vd.digest_stats.csv
```

</details>
<br/>

```bash
ls -lhv ./results/04_pore_c_snakemake_pipeline_run/pipeline_run/juicebox/
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
total 6.2G
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM  97M Aug 23 12:11 NlaIII_Cavpor3.0.hicRef
-rw-rw---- 1 lkemp SEC_lab_KSCBIOM 4.5G Aug 23 22:27 NlaIII_run01_Cavpor3.0_unphased.mnd.txt
```

</details>
<br/>

Locally we have:

- Partial [Pore-C-Snakemake](https://github.com/nanoporetech/Pore-C-Snakemake) pipeline outputs

In the github repo we have:

- [Initial QC reports](https://github.com/leahkemp/guinea_pore_c/tree/main/results/03_initial_qc/pycoqc)
- [Partial Pore-C-Snakemake pipeline outputs](https://github.com/leahkemp/guinea_pore_c/tree/main/results/04_pore_c_snakemake_pipeline_run/pipeline_run)
- [A bunch of additional analysis files in the github repo](https://github.com/leahkemp/guinea_pore_c)
