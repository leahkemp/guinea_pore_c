# 05 - Look at outputs

Created: 2022/08/10 15:30:51
Last modified: 2022/08/18 17:46:45

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
./results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/results/contacts/NlaIII_run01_batch14_Cavpor3.0_unphased.contacts.parquet \
--head 10
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
                              read_name  read_length  read_idx  \
0  00057803-e757-4619-ada6-3320e84826b4         7550      1603   
1  00057803-e757-4619-ada6-3320e84826b4         7550      1603   
2  00057803-e757-4619-ada6-3320e84826b4         7550      1603   
3  00057803-e757-4619-ada6-3320e84826b4         7550      1603   
4  00057803-e757-4619-ada6-3320e84826b4         7550      1603   
5  00057803-e757-4619-ada6-3320e84826b4         7550      1603   
6  00057803-e757-4619-ada6-3320e84826b4         7550      1603   
7  00057803-e757-4619-ada6-3320e84826b4         7550      1603   
8  00057803-e757-4619-ada6-3320e84826b4         7550      1603   
9  00057803-e757-4619-ada6-3320e84826b4         7550      1603   

   contact_is_direct  contact_is_cis  contact_read_distance  \
0               True           False                   -129   
1              False           False                   3293   
2              False           False                   2951   
3              False           False                   2328   
4              False           False                   1906   
5              False           False                   1667   
6              False           False                   1188   
7              False           False                    841   
8               True           False                     -5   
9              False           False                   3655   

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
0                          0               trans             10020   
1                          0               trans             10032   
2                          0               trans             10029   
3                          0               trans             10026   
4                          0               trans             10027   
5                          0               trans             10027   
6                          0               trans             10027   
7                          0               trans             10018   
8                          0               trans             10024   
9                          0               trans             10032   

  align1_chrom  align1_start  align1_end  align1_strand  \
0  NT_176074.1        146279      147003          False   
1  NT_176404.1      20647990    20648194          False   
2  NT_176408.1       3438104     3438334          False   
3  NT_176074.1        157617      158078           True   
4  NT_176412.1       9415987     9416362           True   
5  NT_176412.1       9415987     9416362           True   
6  NT_176412.1       9415987     9416362           True   
7  NT_176410.1      12168949    12169721          False   
8  NT_176410.1      12013195    12013710           True   
9  NT_176404.1      20647990    20648194          False   

   align1_mapping_quality  align1_align_score  align1_align_base_qscore  \
0                      16                 666                        18   
1                      37                 175                        15   
2                      40                 227                        17   
3                       2                 419                        19   
4                      45                 340                        19   
5                      45                 340                        19   
6                      45                 340                        19   
7                      51                 721                        18   
8                      48                 487                        22   
9                      37                 175                        15   

   align1_phase_set  align1_phase_qual  align1_haplotype  align1_fragment_id  \
0                 0                  0                -1              544854   
1                 0                  0                -1             8061789   
2                 0                  0                -1             8797384   
3                 0                  0                -1              544901   
4                 0                  0                -1             9793050   
5                 0                  0                -1             9793050   
6                 0                  0                -1             9793050   
7                 0                  0                -1             9282789   
8                 0                  0                -1             9282123   
9                 0                  0                -1             8061789   

   align1_fragment_start  align1_fragment_end  align2_align_idx align2_chrom  \
0                 146184               147002             10023  NT_176414.1   
1               20647995             20648198             10027  NT_176412.1   
2                3438108              3438334             10027  NT_176412.1   
3                 157622               158077             10027  NT_176412.1   
4                9415992              9416361             10033  NT_176414.1   
5                9415992              9416361             10031  NT_176414.1   
6                9415992              9416361             10025  NT_176414.1   
7               12168953             12169723             10027  NT_176412.1   
8               12013199             12013710             10027  NT_176412.1   
9               20647995             20648198             10030  NT_176414.1   

   align2_start  align2_end  align2_strand  align2_mapping_quality  \
0      19604514    19605104           True                      48   
1       9415987     9416362           True                      45   
2       9415987     9416362           True                      45   
3       9415987     9416362           True                      45   
4      32602932    32603027           True                      23   
5      32655950    32656151           True                      38   
6      49966200    49966682           True                      47   
7       9415987     9416362           True                      45   
8       9415987     9416362           True                      45   
9      33288024    33288291           True                      39   

   align2_align_score  align2_align_base_qscore  align2_phase_set  \
0                 535                        16                 0   
1                 340                        19                 0   
2                 340                        19                 0   
3                 340                        19                 0   
4                  91                        16                 0   
5                 189                        23                 0   
6                 460                        20                 0   
7                 340                        19                 0   
8                 340                        19                 0   
9                 213                        14                 0   

   align2_haplotype  align2_fragment_id  align2_fragment_start  \
0                -1            10381168               19604514   
1                -1             9793050                9415992   
2                -1             9793050                9415992   
3                -1             9793050                9415992   
4                -1            10440595               32602918   
5                -1            10440817               32655954   
6                -1            10513473               49966205   
7                -1             9793050                9415992   
8                -1             9793050                9415992   
9                -1            10443370               33288030   

   align2_fragment_end  
0             19605104  
1              9416361  
2              9416361  
3              9416361  
4             32603027  
5             32656151  
6             49966682  
7              9416361  
8              9416361  
9             33288246 
```

</details>
<br/>

Get schema information

```bash
parq \
./results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/results/contacts/NlaIII_run01_batch14_Cavpor3.0_unphased.contacts.parquet \
--schema
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash

 # Schema 
 <pyarrow._parquet.ParquetSchema object at 0x7f5b31244940>
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
./results/04_pore_c_snakemake_pipeline_run/Pore-C-Snakemake/results/contacts/NlaIII_run01_batch14_Cavpor3.0_unphased.contacts.parquet \
--count
```

<details><summary markdown="span">My output (click to expand)</summary>

```bash
778296
```

</details>
<br/>
