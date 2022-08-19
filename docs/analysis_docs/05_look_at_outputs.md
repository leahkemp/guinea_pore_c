# 05 - Look at outputs

Created: 2022/08/10 15:30:51
Last modified: 2022/08/19 13:15:34

- **Aim:** This document documents/describes looking at the outputs of the analyses for this project
- **Prerequisite software:** [conda](https://docs.conda.io/en/latest/) v4.13.0, [mamba](https://mamba.readthedocs.io/en/latest/index.html) v0.24.0, [GNU coreutils](https://www.gnu.org/software/coreutils/)
- **OS:** ORAC (CentOS Linux) (ESR production network)

## Table of contents

- [05 - Look at outputs](#05---look-at-outputs)
  - [Table of contents](#table-of-contents)
  - [View parquet files](#view-parquet-files)

## View parquet files

Create conda environment with [parquet-cli](https://github.com/chhantyal/parquet-cli) installed

```bash
mamba env create --force -f ./scripts/envs/conda.parquet-cli.yml
conda activate parquet-cli
```

Have a look at one of the parquet files

```bash
parq \
./results/04_pore_c_snakemake_pipeline_run/pipeline_run/merged_contacts/NlaIII_run01_Cavpor3.0_unphased.contacts.parquet/part.0.parquet \
--head 10
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
                              read_name  read_length  read_idx  \
0  0006c00e-cf1c-4536-8604-bf27c3bc89da         1093     36062   
1  0008dfc0-cd75-49d4-ba5c-51f8dfffac9b         2482      2776   
2  0008dfc0-cd75-49d4-ba5c-51f8dfffac9b         2482      2776   
3  0008dfc0-cd75-49d4-ba5c-51f8dfffac9b         2482      2776   
4  0008dfc0-cd75-49d4-ba5c-51f8dfffac9b         2482      2776   
5  0008dfc0-cd75-49d4-ba5c-51f8dfffac9b         2482      2776   
6  0008dfc0-cd75-49d4-ba5c-51f8dfffac9b         2482      2776   
7  0008dfc0-cd75-49d4-ba5c-51f8dfffac9b         2482      2776   
8  0008dfc0-cd75-49d4-ba5c-51f8dfffac9b         2482      2776   
9  0008dfc0-cd75-49d4-ba5c-51f8dfffac9b         2482      2776   

   contact_is_direct  contact_is_cis  contact_read_distance  \
0               True           False                     -5   
1               True           False                     -5   
2              False           False                     85   
3              False           False                    358   
4              False           False                    272   
5               True           False                     -1   
6              False           False                   1435   
7              False           False                   1349   
8              False           False                   1274   
9               True           False                     -2   

   contact_genome_distance  contact_fragment_adjacent  \
0                        0                      False   
1                        0                      False   
2                        0                      False   
3                        0                      False   
4                        0                      False   
5                        0                      False   
6                        0                      False   
7                        0                      False   
8                        0                      False   
9                        0                      False   

   contact_fragment_distance haplotype_pair_type  align1_align_idx  \
0                          0               trans            200242   
1                          0               trans             16301   
2                          0               trans             16299   
3                          0               trans             16295   
4                          0               trans             16301   
5                          0               trans             16301   
6                          0               trans             16296   
7                          0               trans             16296   
8                          0               trans             16296   
9                          0               trans             16296   

  align1_chrom  align1_start  align1_end  align1_strand  \
0  NT_176234.1        537358      537801          False   
1  NT_176159.1        533789      533881           True   
2  NT_176392.1      22111404    22111569           True   
3  NT_176359.1       6562540     6563624           True   
4  NT_176159.1        533789      533881           True   
5  NT_176159.1        533789      533881           True   
6  NT_176073.1        303436      304137           True   
7  NT_176073.1        303436      304137           True   
8  NT_176073.1        303436      304137           True   
9  NT_176073.1        303436      304137           True   

   align1_mapping_quality  align1_align_score  align1_align_base_qscore  \
0                      24                 418                        17   
1                       9                  69                        14   
2                      36                 147                        15   
3                      53                 937                        15   
4                       9                  69                        14   
5                       9                  69                        14   
6                      49                 547                        14   
7                      49                 547                        14   
8                      49                 547                        14   
9                      49                 547                        14   

   align1_phase_set  align1_phase_qual  align1_haplotype  align1_fragment_id  \
0                 0                  0                -1             1077061   
1                 0                  0                -1              752524   
2                 0                  0                -1             6256425   
3                 0                  0                -1             3610357   
4                 0                  0                -1              752524   
5                 0                  0                -1              752524   
6                 0                  0                -1              543973   
7                 0                  0                -1              543973   
8                 0                  0                -1              543973   
9                 0                  0                -1              543973   

   align1_fragment_start  align1_fragment_end  align2_align_idx align2_chrom  \
0                 537549               537805            200241  NT_176383.1   
1                 533576               533881             16299  NT_176392.1   
2               22111409             22111569             16300  NT_176397.1   
3                6562544              6563365             16299  NT_176392.1   
4                 533576               533881             16295  NT_176359.1   
5                 533576               533881             16300  NT_176397.1   
6                 303522               303754             16299  NT_176392.1   
7                 303522               303754             16301  NT_176159.1   
8                 303522               303754             16300  NT_176397.1   
9                 303522               303754             16295  NT_176359.1   

   align2_start  align2_end  align2_strand  align2_mapping_quality  \
0      12375757    12376372          False                      49   
1      22111404    22111569           True                      36   
2       4834611     4834687           True                      22   
3      22111404    22111569           True                      36   
4       6562540     6563624           True                      53   
5       4834611     4834687           True                      22   
6      22111404    22111569           True                      36   
7        533789      533881           True                       9   
8       4834611     4834687           True                      22   
9       6562540     6563624           True                      53   

   align2_align_score  align2_align_base_qscore  align2_phase_set  \
0                 529                        15                 0   
1                 147                        15                 0   
2                  76                        17                 0   
3                 147                        15                 0   
4                 937                        15                 0   
5                  76                        17                 0   
6                 147                        15                 0   
7                  69                        14                 0   
8                  76                        17                 0   
9                 937                        15                 0   

   align2_haplotype  align2_fragment_id  align2_fragment_start  \
0                -1             5217722               12376079   
1                -1             6256425               22111409   
2                -1             6836516                4834615   
3                -1             6256425               22111409   
4                -1             3610357                6562544   
5                -1             6836516                4834615   
6                -1             6256425               22111409   
7                -1              752524                 533576   
8                -1             6836516                4834615   
9                -1             3610357                6562544   

   align2_fragment_end  
0             12376371  
1             22111569  
2              4834687  
3             22111569  
4              6563365  
5              4834687  
6             22111569  
7               533881  
8              4834687  
9              6563365 
```

</details>
<br/>

Get schema information

```bash
parq \
./results/04_pore_c_snakemake_pipeline_run/pipeline_run/merged_contacts/NlaIII_run01_Cavpor3.0_unphased.contacts.parquet/part.0.parquet \
--schema
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash

 # Schema 
 <pyarrow._parquet.ParquetSchema object at 0x7fbcc74c0600>
required group field_id=-1 schema {
  optional binary field_id=-1 read_name (String);
  optional int32 field_id=-1 read_length (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 read_idx (Int(bitWidth=32, isSigned=false));
  optional boolean field_id=-1 contact_is_direct;
  optional boolean field_id=-1 contact_is_cis;
  optional int32 field_id=-1 contact_read_distance;
  optional int32 field_id=-1 contact_genome_distance;
  optional boolean field_id=-1 contact_fragment_adjacent;
  optional int32 field_id=-1 contact_fragment_distance;
  optional binary field_id=-1 haplotype_pair_type (String);
  optional int32 field_id=-1 align1_align_idx (Int(bitWidth=32, isSigned=false));
  optional binary field_id=-1 align1_chrom (String);
  optional int32 field_id=-1 align1_start (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align1_end (Int(bitWidth=32, isSigned=false));
  optional boolean field_id=-1 align1_strand;
  optional int32 field_id=-1 align1_mapping_quality (Int(bitWidth=8, isSigned=false));
  optional int32 field_id=-1 align1_align_score (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align1_align_base_qscore (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align1_phase_set (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align1_phase_qual (Int(bitWidth=8, isSigned=false));
  optional int32 field_id=-1 align1_haplotype (Int(bitWidth=8, isSigned=true));
  optional int32 field_id=-1 align1_fragment_id (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align1_fragment_start (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align1_fragment_end (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align2_align_idx (Int(bitWidth=32, isSigned=false));
  optional binary field_id=-1 align2_chrom (String);
  optional int32 field_id=-1 align2_start (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align2_end (Int(bitWidth=32, isSigned=false));
  optional boolean field_id=-1 align2_strand;
  optional int32 field_id=-1 align2_mapping_quality (Int(bitWidth=8, isSigned=false));
  optional int32 field_id=-1 align2_align_score (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align2_align_base_qscore (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align2_phase_set (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align2_haplotype (Int(bitWidth=8, isSigned=true));
  optional int32 field_id=-1 align2_fragment_id (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align2_fragment_start (Int(bitWidth=32, isSigned=false));
  optional int32 field_id=-1 align2_fragment_end (Int(bitWidth=32, isSigned=false));
}

```

</details>
<br/>

Get total rows count

```bash
parq \
./results/04_pore_c_snakemake_pipeline_run/pipeline_run/merged_contacts/NlaIII_run01_Cavpor3.0_unphased.contacts.parquet/part.0.parquet \
--count
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
617177
```

</details>
<br/>
