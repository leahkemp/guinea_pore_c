# 01 - Assumptions

Created: 2022/08/10 14:39:41
Last modified: 2022/08/15 16:54:54

- **Aim:** This document documents/describes the assumptions for reproducing this analysis
- **Prerequisite software:**
- **OS:**

## Table of contents

- [01 - Assumptions](#01---assumptions)
  - [Table of contents](#table-of-contents)
  - [Assumptions](#assumptions)

## Assumptions

1. You have cloned the [project github repository](https://github.com/leahkemp/guinea_pore_c) and are running all code from this directory

2. You have configured all user configurable parameters within each script appropriate for your setup

3. You have the mentioned prerequisite software

4. You have raw fast5 files in a single directory

<details><summary markdown="span">Expected raw fast5 files (click to expand)</summary>

```bash
├── [ 94M]  FAQ91555_fail_05abd159_0.fast5
├── [103M]  FAQ91555_fail_05abd159_1.fast5
├── [100M]  FAQ91555_fail_05abd159_2.fast5
├── [104M]  FAQ91555_fail_05abd159_3.fast5
├── [101M]  FAQ91555_fail_05abd159_4.fast5
├── [104M]  FAQ91555_fail_05abd159_5.fast5
├── [107M]  FAQ91555_fail_05abd159_6.fast5
├── [115M]  FAQ91555_fail_05abd159_7.fast5
├── [111M]  FAQ91555_fail_05abd159_8.fast5
├── [111M]  FAQ91555_fail_05abd159_9.fast5
├── [116M]  FAQ91555_fail_05abd159_10.fast5
├── [116M]  FAQ91555_fail_05abd159_11.fast5
├── [117M]  FAQ91555_fail_05abd159_12.fast5
├── [116M]  FAQ91555_fail_05abd159_13.fast5
├── [117M]  FAQ91555_fail_05abd159_14.fast5
├── [123M]  FAQ91555_fail_05abd159_15.fast5
├── [122M]  FAQ91555_fail_05abd159_16.fast5
├── [118M]  FAQ91555_fail_05abd159_17.fast5
├── [120M]  FAQ91555_fail_05abd159_18.fast5
├── [120M]  FAQ91555_fail_05abd159_19.fast5
├── [122M]  FAQ91555_fail_05abd159_20.fast5
├── [123M]  FAQ91555_fail_05abd159_21.fast5
├── [125M]  FAQ91555_fail_05abd159_22.fast5
├── [120M]  FAQ91555_fail_05abd159_23.fast5
├── [120M]  FAQ91555_fail_05abd159_24.fast5
├── [122M]  FAQ91555_fail_05abd159_25.fast5
├── [115M]  FAQ91555_fail_05abd159_26.fast5
├── [114M]  FAQ91555_fail_05abd159_27.fast5
├── [114M]  FAQ91555_fail_05abd159_28.fast5
├── [ 14M]  FAQ91555_fail_05abd159_29.fast5
├── [125M]  FAQ91555_fail_ab35bd75_0.fast5
├── [132M]  FAQ91555_fail_ab35bd75_1.fast5
├── [129M]  FAQ91555_fail_ab35bd75_2.fast5
├── [128M]  FAQ91555_fail_ab35bd75_3.fast5
├── [120M]  FAQ91555_fail_ab35bd75_4.fast5
├── [134M]  FAQ91555_fail_ab35bd75_5.fast5
├── [131M]  FAQ91555_fail_ab35bd75_6.fast5
├── [130M]  FAQ91555_fail_ab35bd75_7.fast5
├── [102M]  FAQ91555_fail_ab35bd75_8.fast5
├── [108M]  FAQ91555_fail_ab35bd75_9.fast5
├── [111M]  FAQ91555_fail_ab35bd75_10.fast5
├── [113M]  FAQ91555_fail_ab35bd75_11.fast5
├── [116M]  FAQ91555_fail_ab35bd75_12.fast5
├── [116M]  FAQ91555_fail_ab35bd75_13.fast5
├── [116M]  FAQ91555_fail_ab35bd75_14.fast5
├── [115M]  FAQ91555_fail_ab35bd75_15.fast5
├── [115M]  FAQ91555_fail_ab35bd75_16.fast5
├── [126M]  FAQ91555_fail_ab35bd75_17.fast5
├── [120M]  FAQ91555_fail_ab35bd75_18.fast5
├── [126M]  FAQ91555_fail_ab35bd75_19.fast5
├── [130M]  FAQ91555_fail_ab35bd75_20.fast5
├── [130M]  FAQ91555_fail_ab35bd75_21.fast5
├── [125M]  FAQ91555_fail_ab35bd75_22.fast5
├── [127M]  FAQ91555_fail_ab35bd75_23.fast5
├── [124M]  FAQ91555_fail_ab35bd75_24.fast5
├── [123M]  FAQ91555_fail_ab35bd75_25.fast5
├── [128M]  FAQ91555_fail_ab35bd75_26.fast5
├── [125M]  FAQ91555_fail_ab35bd75_27.fast5
├── [129M]  FAQ91555_fail_ab35bd75_28.fast5
├── [127M]  FAQ91555_fail_ab35bd75_29.fast5
├── [122M]  FAQ91555_fail_ab35bd75_30.fast5
├── [126M]  FAQ91555_fail_ab35bd75_31.fast5
├── [131M]  FAQ91555_fail_ab35bd75_32.fast5
├── [130M]  FAQ91555_fail_ab35bd75_33.fast5
├── [130M]  FAQ91555_fail_ab35bd75_34.fast5
├── [139M]  FAQ91555_fail_ab35bd75_35.fast5
├── [128M]  FAQ91555_fail_ab35bd75_36.fast5
├── [128M]  FAQ91555_fail_ab35bd75_37.fast5
├── [134M]  FAQ91555_fail_ab35bd75_38.fast5
├── [131M]  FAQ91555_fail_ab35bd75_39.fast5
├── [136M]  FAQ91555_fail_ab35bd75_40.fast5
├── [148M]  FAQ91555_fail_ab35bd75_41.fast5
├── [137M]  FAQ91555_fail_ab35bd75_42.fast5
├── [143M]  FAQ91555_fail_ab35bd75_43.fast5
├── [152M]  FAQ91555_fail_ab35bd75_44.fast5
├── [148M]  FAQ91555_fail_ab35bd75_45.fast5
├── [144M]  FAQ91555_fail_ab35bd75_46.fast5
├── [121M]  FAQ91555_fail_ab35bd75_47.fast5
├── [144M]  FAQ91555_fail_ab35bd75_48.fast5
├── [159M]  FAQ91555_fail_ab35bd75_49.fast5
├── [157M]  FAQ91555_fail_ab35bd75_50.fast5
├── [137M]  FAQ91555_fail_ab35bd75_51.fast5
├── [ 26M]  FAQ91555_fail_ab35bd75_52.fast5
├── [ 76M]  FAQ91555_pass_05abd159_0.fast5
├── [112M]  FAQ91555_pass_05abd159_1.fast5
├── [116M]  FAQ91555_pass_05abd159_2.fast5
├── [112M]  FAQ91555_pass_05abd159_3.fast5
├── [110M]  FAQ91555_pass_05abd159_4.fast5
├── [112M]  FAQ91555_pass_05abd159_5.fast5
├── [112M]  FAQ91555_pass_05abd159_6.fast5
├── [113M]  FAQ91555_pass_05abd159_7.fast5
├── [114M]  FAQ91555_pass_05abd159_8.fast5
├── [115M]  FAQ91555_pass_05abd159_9.fast5
├── [114M]  FAQ91555_pass_05abd159_10.fast5
├── [113M]  FAQ91555_pass_05abd159_11.fast5
├── [114M]  FAQ91555_pass_05abd159_12.fast5
├── [114M]  FAQ91555_pass_05abd159_13.fast5
├── [115M]  FAQ91555_pass_05abd159_14.fast5
├── [117M]  FAQ91555_pass_05abd159_15.fast5
├── [118M]  FAQ91555_pass_05abd159_16.fast5
├── [116M]  FAQ91555_pass_05abd159_17.fast5
├── [116M]  FAQ91555_pass_05abd159_18.fast5
├── [121M]  FAQ91555_pass_05abd159_19.fast5
├── [119M]  FAQ91555_pass_05abd159_20.fast5
├── [120M]  FAQ91555_pass_05abd159_21.fast5
├── [115M]  FAQ91555_pass_05abd159_22.fast5
├── [118M]  FAQ91555_pass_05abd159_23.fast5
├── [124M]  FAQ91555_pass_05abd159_24.fast5
├── [121M]  FAQ91555_pass_05abd159_25.fast5
├── [117M]  FAQ91555_pass_05abd159_26.fast5
├── [122M]  FAQ91555_pass_05abd159_27.fast5
├── [122M]  FAQ91555_pass_05abd159_28.fast5
├── [121M]  FAQ91555_pass_05abd159_29.fast5
├── [117M]  FAQ91555_pass_05abd159_30.fast5
├── [120M]  FAQ91555_pass_05abd159_31.fast5
├── [124M]  FAQ91555_pass_05abd159_32.fast5
├── [125M]  FAQ91555_pass_05abd159_33.fast5
├── [124M]  FAQ91555_pass_05abd159_34.fast5
├── [122M]  FAQ91555_pass_05abd159_35.fast5
├── [120M]  FAQ91555_pass_05abd159_36.fast5
├── [124M]  FAQ91555_pass_05abd159_37.fast5
├── [125M]  FAQ91555_pass_05abd159_38.fast5
├── [123M]  FAQ91555_pass_05abd159_39.fast5
├── [124M]  FAQ91555_pass_05abd159_40.fast5
├── [121M]  FAQ91555_pass_05abd159_41.fast5
├── [140M]  FAQ91555_pass_05abd159_42.fast5
├── [124M]  FAQ91555_pass_05abd159_43.fast5
├── [125M]  FAQ91555_pass_05abd159_44.fast5
├── [124M]  FAQ91555_pass_05abd159_45.fast5
├── [129M]  FAQ91555_pass_05abd159_46.fast5
├── [126M]  FAQ91555_pass_05abd159_47.fast5
├── [125M]  FAQ91555_pass_05abd159_48.fast5
├── [131M]  FAQ91555_pass_05abd159_49.fast5
├── [126M]  FAQ91555_pass_05abd159_50.fast5
├── [124M]  FAQ91555_pass_05abd159_51.fast5
├── [131M]  FAQ91555_pass_05abd159_52.fast5
├── [127M]  FAQ91555_pass_05abd159_53.fast5
├── [132M]  FAQ91555_pass_05abd159_54.fast5
├── [116M]  FAQ91555_pass_05abd159_55.fast5
├── [130M]  FAQ91555_pass_05abd159_56.fast5
├── [127M]  FAQ91555_pass_05abd159_57.fast5
├── [127M]  FAQ91555_pass_05abd159_58.fast5
├── [128M]  FAQ91555_pass_05abd159_59.fast5
├── [129M]  FAQ91555_pass_05abd159_60.fast5
├── [132M]  FAQ91555_pass_05abd159_61.fast5
├── [130M]  FAQ91555_pass_05abd159_62.fast5
├── [130M]  FAQ91555_pass_05abd159_63.fast5
├── [128M]  FAQ91555_pass_05abd159_64.fast5
├── [133M]  FAQ91555_pass_05abd159_65.fast5
├── [130M]  FAQ91555_pass_05abd159_66.fast5
├── [132M]  FAQ91555_pass_05abd159_67.fast5
├── [131M]  FAQ91555_pass_05abd159_68.fast5
├── [133M]  FAQ91555_pass_05abd159_69.fast5
├── [130M]  FAQ91555_pass_05abd159_70.fast5
├── [132M]  FAQ91555_pass_05abd159_71.fast5
├── [132M]  FAQ91555_pass_05abd159_72.fast5
├── [130M]  FAQ91555_pass_05abd159_73.fast5
├── [136M]  FAQ91555_pass_05abd159_74.fast5
├── [131M]  FAQ91555_pass_05abd159_75.fast5
├── [136M]  FAQ91555_pass_05abd159_76.fast5
├── [133M]  FAQ91555_pass_05abd159_77.fast5
├── [133M]  FAQ91555_pass_05abd159_78.fast5
├── [134M]  FAQ91555_pass_05abd159_79.fast5
├── [133M]  FAQ91555_pass_05abd159_80.fast5
├── [132M]  FAQ91555_pass_05abd159_81.fast5
├── [132M]  FAQ91555_pass_05abd159_82.fast5
├── [136M]  FAQ91555_pass_05abd159_83.fast5
├── [134M]  FAQ91555_pass_05abd159_84.fast5
├── [136M]  FAQ91555_pass_05abd159_85.fast5
├── [146M]  FAQ91555_pass_05abd159_86.fast5
├── [139M]  FAQ91555_pass_05abd159_87.fast5
├── [133M]  FAQ91555_pass_05abd159_88.fast5
├── [140M]  FAQ91555_pass_05abd159_89.fast5
├── [139M]  FAQ91555_pass_05abd159_90.fast5
├── [134M]  FAQ91555_pass_05abd159_91.fast5
├── [139M]  FAQ91555_pass_05abd159_92.fast5
├── [136M]  FAQ91555_pass_05abd159_93.fast5
├── [135M]  FAQ91555_pass_05abd159_94.fast5
├── [137M]  FAQ91555_pass_05abd159_95.fast5
├── [138M]  FAQ91555_pass_05abd159_96.fast5
├── [116M]  FAQ91555_pass_05abd159_97.fast5
├── [136M]  FAQ91555_pass_05abd159_98.fast5
├── [139M]  FAQ91555_pass_05abd159_99.fast5
├── [136M]  FAQ91555_pass_05abd159_100.fast5
├── [137M]  FAQ91555_pass_05abd159_101.fast5
├── [137M]  FAQ91555_pass_05abd159_102.fast5
├── [140M]  FAQ91555_pass_05abd159_103.fast5
├── [139M]  FAQ91555_pass_05abd159_104.fast5
├── [140M]  FAQ91555_pass_05abd159_105.fast5
├── [137M]  FAQ91555_pass_05abd159_106.fast5
├── [139M]  FAQ91555_pass_05abd159_107.fast5
├── [136M]  FAQ91555_pass_05abd159_108.fast5
├── [139M]  FAQ91555_pass_05abd159_109.fast5
├── [138M]  FAQ91555_pass_05abd159_110.fast5
├── [136M]  FAQ91555_pass_05abd159_111.fast5
├── [138M]  FAQ91555_pass_05abd159_112.fast5
├── [150M]  FAQ91555_pass_05abd159_113.fast5
├── [135M]  FAQ91555_pass_05abd159_114.fast5
├── [136M]  FAQ91555_pass_05abd159_115.fast5
├── [134M]  FAQ91555_pass_05abd159_116.fast5
├── [139M]  FAQ91555_pass_05abd159_117.fast5
├── [136M]  FAQ91555_pass_05abd159_118.fast5
├── [139M]  FAQ91555_pass_05abd159_119.fast5
├── [137M]  FAQ91555_pass_05abd159_120.fast5
├── [140M]  FAQ91555_pass_05abd159_121.fast5
├── [141M]  FAQ91555_pass_05abd159_122.fast5
├── [135M]  FAQ91555_pass_05abd159_123.fast5
├── [134M]  FAQ91555_pass_05abd159_124.fast5
├── [138M]  FAQ91555_pass_05abd159_125.fast5
├── [139M]  FAQ91555_pass_05abd159_126.fast5
├── [142M]  FAQ91555_pass_05abd159_127.fast5
├── [145M]  FAQ91555_pass_05abd159_128.fast5
├── [141M]  FAQ91555_pass_05abd159_129.fast5
├── [137M]  FAQ91555_pass_05abd159_130.fast5
├── [140M]  FAQ91555_pass_05abd159_131.fast5
├── [137M]  FAQ91555_pass_05abd159_132.fast5
├── [139M]  FAQ91555_pass_05abd159_133.fast5
├── [141M]  FAQ91555_pass_05abd159_134.fast5
├── [141M]  FAQ91555_pass_05abd159_135.fast5
├── [143M]  FAQ91555_pass_05abd159_136.fast5
├── [146M]  FAQ91555_pass_05abd159_137.fast5
├── [141M]  FAQ91555_pass_05abd159_138.fast5
├── [137M]  FAQ91555_pass_05abd159_139.fast5
├── [140M]  FAQ91555_pass_05abd159_140.fast5
├── [141M]  FAQ91555_pass_05abd159_141.fast5
├── [141M]  FAQ91555_pass_05abd159_142.fast5
├── [140M]  FAQ91555_pass_05abd159_143.fast5
├── [143M]  FAQ91555_pass_05abd159_144.fast5
├── [143M]  FAQ91555_pass_05abd159_145.fast5
├── [144M]  FAQ91555_pass_05abd159_146.fast5
├── [142M]  FAQ91555_pass_05abd159_147.fast5
├── [143M]  FAQ91555_pass_05abd159_148.fast5
├── [140M]  FAQ91555_pass_05abd159_149.fast5
├── [141M]  FAQ91555_pass_05abd159_150.fast5
├── [141M]  FAQ91555_pass_05abd159_151.fast5
├── [140M]  FAQ91555_pass_05abd159_152.fast5
├── [141M]  FAQ91555_pass_05abd159_153.fast5
├── [141M]  FAQ91555_pass_05abd159_154.fast5
├── [145M]  FAQ91555_pass_05abd159_155.fast5
├── [144M]  FAQ91555_pass_05abd159_156.fast5
├── [143M]  FAQ91555_pass_05abd159_157.fast5
├── [144M]  FAQ91555_pass_05abd159_158.fast5
├── [ 98M]  FAQ91555_pass_05abd159_159.fast5
├── [129M]  FAQ91555_pass_ab35bd75_0.fast5
├── [150M]  FAQ91555_pass_ab35bd75_1.fast5
├── [147M]  FAQ91555_pass_ab35bd75_2.fast5
├── [150M]  FAQ91555_pass_ab35bd75_3.fast5
├── [150M]  FAQ91555_pass_ab35bd75_4.fast5
├── [151M]  FAQ91555_pass_ab35bd75_5.fast5
├── [152M]  FAQ91555_pass_ab35bd75_6.fast5
├── [148M]  FAQ91555_pass_ab35bd75_7.fast5
├── [151M]  FAQ91555_pass_ab35bd75_8.fast5
├── [147M]  FAQ91555_pass_ab35bd75_9.fast5
├── [147M]  FAQ91555_pass_ab35bd75_10.fast5
├── [150M]  FAQ91555_pass_ab35bd75_11.fast5
├── [150M]  FAQ91555_pass_ab35bd75_12.fast5
├── [148M]  FAQ91555_pass_ab35bd75_13.fast5
├── [145M]  FAQ91555_pass_ab35bd75_14.fast5
├── [151M]  FAQ91555_pass_ab35bd75_15.fast5
├── [149M]  FAQ91555_pass_ab35bd75_16.fast5
├── [150M]  FAQ91555_pass_ab35bd75_17.fast5
├── [149M]  FAQ91555_pass_ab35bd75_18.fast5
├── [149M]  FAQ91555_pass_ab35bd75_19.fast5
├── [142M]  FAQ91555_pass_ab35bd75_20.fast5
├── [153M]  FAQ91555_pass_ab35bd75_21.fast5
├── [150M]  FAQ91555_pass_ab35bd75_22.fast5
├── [149M]  FAQ91555_pass_ab35bd75_23.fast5
├── [147M]  FAQ91555_pass_ab35bd75_24.fast5
├── [163M]  FAQ91555_pass_ab35bd75_25.fast5
├── [146M]  FAQ91555_pass_ab35bd75_26.fast5
├── [147M]  FAQ91555_pass_ab35bd75_27.fast5
├── [152M]  FAQ91555_pass_ab35bd75_28.fast5
├── [151M]  FAQ91555_pass_ab35bd75_29.fast5
├── [149M]  FAQ91555_pass_ab35bd75_30.fast5
├── [153M]  FAQ91555_pass_ab35bd75_31.fast5
├── [148M]  FAQ91555_pass_ab35bd75_32.fast5
├── [154M]  FAQ91555_pass_ab35bd75_33.fast5
├── [152M]  FAQ91555_pass_ab35bd75_34.fast5
├── [147M]  FAQ91555_pass_ab35bd75_35.fast5
├── [120M]  FAQ91555_pass_ab35bd75_36.fast5
├── [112M]  FAQ91555_pass_ab35bd75_37.fast5
├── [ 89M]  FAQ91555_pass_ab35bd75_38.fast5
├── [119M]  FAQ91555_pass_ab35bd75_39.fast5
├── [123M]  FAQ91555_pass_ab35bd75_40.fast5
├── [121M]  FAQ91555_pass_ab35bd75_41.fast5
├── [122M]  FAQ91555_pass_ab35bd75_42.fast5
├── [129M]  FAQ91555_pass_ab35bd75_43.fast5
├── [120M]  FAQ91555_pass_ab35bd75_44.fast5
├── [125M]  FAQ91555_pass_ab35bd75_45.fast5
├── [125M]  FAQ91555_pass_ab35bd75_46.fast5
├── [129M]  FAQ91555_pass_ab35bd75_47.fast5
├── [128M]  FAQ91555_pass_ab35bd75_48.fast5
├── [125M]  FAQ91555_pass_ab35bd75_49.fast5
├── [130M]  FAQ91555_pass_ab35bd75_50.fast5
├── [126M]  FAQ91555_pass_ab35bd75_51.fast5
├── [132M]  FAQ91555_pass_ab35bd75_52.fast5
├── [131M]  FAQ91555_pass_ab35bd75_53.fast5
├── [128M]  FAQ91555_pass_ab35bd75_54.fast5
├── [129M]  FAQ91555_pass_ab35bd75_55.fast5
├── [142M]  FAQ91555_pass_ab35bd75_56.fast5
├── [129M]  FAQ91555_pass_ab35bd75_57.fast5
├── [133M]  FAQ91555_pass_ab35bd75_58.fast5
├── [132M]  FAQ91555_pass_ab35bd75_59.fast5
├── [132M]  FAQ91555_pass_ab35bd75_60.fast5
├── [134M]  FAQ91555_pass_ab35bd75_61.fast5
├── [133M]  FAQ91555_pass_ab35bd75_62.fast5
├── [134M]  FAQ91555_pass_ab35bd75_63.fast5
├── [133M]  FAQ91555_pass_ab35bd75_64.fast5
├── [133M]  FAQ91555_pass_ab35bd75_65.fast5
├── [137M]  FAQ91555_pass_ab35bd75_66.fast5
├── [135M]  FAQ91555_pass_ab35bd75_67.fast5
├── [134M]  FAQ91555_pass_ab35bd75_68.fast5
├── [138M]  FAQ91555_pass_ab35bd75_69.fast5
├── [132M]  FAQ91555_pass_ab35bd75_70.fast5
├── [136M]  FAQ91555_pass_ab35bd75_71.fast5
├── [139M]  FAQ91555_pass_ab35bd75_72.fast5
├── [142M]  FAQ91555_pass_ab35bd75_73.fast5
├── [140M]  FAQ91555_pass_ab35bd75_74.fast5
├── [139M]  FAQ91555_pass_ab35bd75_75.fast5
├── [141M]  FAQ91555_pass_ab35bd75_76.fast5
├── [140M]  FAQ91555_pass_ab35bd75_77.fast5
├── [139M]  FAQ91555_pass_ab35bd75_78.fast5
├── [155M]  FAQ91555_pass_ab35bd75_79.fast5
├── [140M]  FAQ91555_pass_ab35bd75_80.fast5
├── [120M]  FAQ91555_pass_ab35bd75_81.fast5
├── [140M]  FAQ91555_pass_ab35bd75_82.fast5
├── [144M]  FAQ91555_pass_ab35bd75_83.fast5
├── [141M]  FAQ91555_pass_ab35bd75_84.fast5
├── [138M]  FAQ91555_pass_ab35bd75_85.fast5
├── [141M]  FAQ91555_pass_ab35bd75_86.fast5
├── [146M]  FAQ91555_pass_ab35bd75_87.fast5
├── [143M]  FAQ91555_pass_ab35bd75_88.fast5
├── [140M]  FAQ91555_pass_ab35bd75_89.fast5
├── [142M]  FAQ91555_pass_ab35bd75_90.fast5
├── [142M]  FAQ91555_pass_ab35bd75_91.fast5
├── [143M]  FAQ91555_pass_ab35bd75_92.fast5
├── [141M]  FAQ91555_pass_ab35bd75_93.fast5
├── [138M]  FAQ91555_pass_ab35bd75_94.fast5
├── [139M]  FAQ91555_pass_ab35bd75_95.fast5
├── [139M]  FAQ91555_pass_ab35bd75_96.fast5
├── [139M]  FAQ91555_pass_ab35bd75_97.fast5
├── [150M]  FAQ91555_pass_ab35bd75_98.fast5
├── [142M]  FAQ91555_pass_ab35bd75_99.fast5
├── [142M]  FAQ91555_pass_ab35bd75_100.fast5
├── [140M]  FAQ91555_pass_ab35bd75_101.fast5
├── [145M]  FAQ91555_pass_ab35bd75_102.fast5
├── [146M]  FAQ91555_pass_ab35bd75_103.fast5
├── [143M]  FAQ91555_pass_ab35bd75_104.fast5
├── [142M]  FAQ91555_pass_ab35bd75_105.fast5
├── [142M]  FAQ91555_pass_ab35bd75_106.fast5
├── [147M]  FAQ91555_pass_ab35bd75_107.fast5
├── [146M]  FAQ91555_pass_ab35bd75_108.fast5
├── [146M]  FAQ91555_pass_ab35bd75_109.fast5
├── [140M]  FAQ91555_pass_ab35bd75_110.fast5
├── [143M]  FAQ91555_pass_ab35bd75_111.fast5
├── [145M]  FAQ91555_pass_ab35bd75_112.fast5
├── [128M]  FAQ91555_pass_ab35bd75_113.fast5
├── [143M]  FAQ91555_pass_ab35bd75_114.fast5
├── [144M]  FAQ91555_pass_ab35bd75_115.fast5
├── [146M]  FAQ91555_pass_ab35bd75_116.fast5
├── [143M]  FAQ91555_pass_ab35bd75_117.fast5
├── [155M]  FAQ91555_pass_ab35bd75_118.fast5
├── [148M]  FAQ91555_pass_ab35bd75_119.fast5
├── [149M]  FAQ91555_pass_ab35bd75_120.fast5
├── [146M]  FAQ91555_pass_ab35bd75_121.fast5
├── [145M]  FAQ91555_pass_ab35bd75_122.fast5
├── [146M]  FAQ91555_pass_ab35bd75_123.fast5
├── [145M]  FAQ91555_pass_ab35bd75_124.fast5
├── [141M]  FAQ91555_pass_ab35bd75_125.fast5
├── [147M]  FAQ91555_pass_ab35bd75_126.fast5
├── [150M]  FAQ91555_pass_ab35bd75_127.fast5
├── [150M]  FAQ91555_pass_ab35bd75_128.fast5
├── [145M]  FAQ91555_pass_ab35bd75_129.fast5
├── [153M]  FAQ91555_pass_ab35bd75_130.fast5
├── [153M]  FAQ91555_pass_ab35bd75_131.fast5
├── [150M]  FAQ91555_pass_ab35bd75_132.fast5
├── [150M]  FAQ91555_pass_ab35bd75_133.fast5
├── [147M]  FAQ91555_pass_ab35bd75_134.fast5
├── [148M]  FAQ91555_pass_ab35bd75_135.fast5
├── [160M]  FAQ91555_pass_ab35bd75_136.fast5
├── [141M]  FAQ91555_pass_ab35bd75_137.fast5
├── [147M]  FAQ91555_pass_ab35bd75_138.fast5
├── [152M]  FAQ91555_pass_ab35bd75_139.fast5
├── [150M]  FAQ91555_pass_ab35bd75_140.fast5
├── [149M]  FAQ91555_pass_ab35bd75_141.fast5
├── [152M]  FAQ91555_pass_ab35bd75_142.fast5
├── [148M]  FAQ91555_pass_ab35bd75_143.fast5
├── [153M]  FAQ91555_pass_ab35bd75_144.fast5
├── [153M]  FAQ91555_pass_ab35bd75_145.fast5
├── [157M]  FAQ91555_pass_ab35bd75_146.fast5
├── [156M]  FAQ91555_pass_ab35bd75_147.fast5
├── [152M]  FAQ91555_pass_ab35bd75_148.fast5
├── [149M]  FAQ91555_pass_ab35bd75_149.fast5
├── [149M]  FAQ91555_pass_ab35bd75_150.fast5
├── [154M]  FAQ91555_pass_ab35bd75_151.fast5
├── [155M]  FAQ91555_pass_ab35bd75_152.fast5
├── [169M]  FAQ91555_pass_ab35bd75_153.fast5
├── [145M]  FAQ91555_pass_ab35bd75_154.fast5
├── [155M]  FAQ91555_pass_ab35bd75_155.fast5
├── [156M]  FAQ91555_pass_ab35bd75_156.fast5
├── [153M]  FAQ91555_pass_ab35bd75_157.fast5
├── [153M]  FAQ91555_pass_ab35bd75_158.fast5
├── [148M]  FAQ91555_pass_ab35bd75_159.fast5
├── [151M]  FAQ91555_pass_ab35bd75_160.fast5
├── [155M]  FAQ91555_pass_ab35bd75_161.fast5
├── [158M]  FAQ91555_pass_ab35bd75_162.fast5
├── [147M]  FAQ91555_pass_ab35bd75_163.fast5
├── [152M]  FAQ91555_pass_ab35bd75_164.fast5
├── [150M]  FAQ91555_pass_ab35bd75_165.fast5
├── [147M]  FAQ91555_pass_ab35bd75_166.fast5
├── [154M]  FAQ91555_pass_ab35bd75_167.fast5
├── [152M]  FAQ91555_pass_ab35bd75_168.fast5
├── [154M]  FAQ91555_pass_ab35bd75_169.fast5
├── [168M]  FAQ91555_pass_ab35bd75_170.fast5
├── [155M]  FAQ91555_pass_ab35bd75_171.fast5
├── [155M]  FAQ91555_pass_ab35bd75_172.fast5
├── [155M]  FAQ91555_pass_ab35bd75_173.fast5
├── [157M]  FAQ91555_pass_ab35bd75_174.fast5
├── [151M]  FAQ91555_pass_ab35bd75_175.fast5
├── [158M]  FAQ91555_pass_ab35bd75_176.fast5
├── [158M]  FAQ91555_pass_ab35bd75_177.fast5
├── [155M]  FAQ91555_pass_ab35bd75_178.fast5
├── [160M]  FAQ91555_pass_ab35bd75_179.fast5
├── [171M]  FAQ91555_pass_ab35bd75_180.fast5
├── [156M]  FAQ91555_pass_ab35bd75_181.fast5
├── [158M]  FAQ91555_pass_ab35bd75_182.fast5
├── [156M]  FAQ91555_pass_ab35bd75_183.fast5
├── [164M]  FAQ91555_pass_ab35bd75_184.fast5
├── [154M]  FAQ91555_pass_ab35bd75_185.fast5
├── [152M]  FAQ91555_pass_ab35bd75_186.fast5
├── [163M]  FAQ91555_pass_ab35bd75_187.fast5
├── [164M]  FAQ91555_pass_ab35bd75_188.fast5
├── [164M]  FAQ91555_pass_ab35bd75_189.fast5
├── [169M]  FAQ91555_pass_ab35bd75_190.fast5
├── [165M]  FAQ91555_pass_ab35bd75_191.fast5
├── [165M]  FAQ91555_pass_ab35bd75_192.fast5
├── [163M]  FAQ91555_pass_ab35bd75_193.fast5
├── [169M]  FAQ91555_pass_ab35bd75_194.fast5
├── [170M]  FAQ91555_pass_ab35bd75_195.fast5
├── [173M]  FAQ91555_pass_ab35bd75_196.fast5
├── [174M]  FAQ91555_pass_ab35bd75_197.fast5
├── [165M]  FAQ91555_pass_ab35bd75_198.fast5
├── [170M]  FAQ91555_pass_ab35bd75_199.fast5
├── [166M]  FAQ91555_pass_ab35bd75_200.fast5
├── [165M]  FAQ91555_pass_ab35bd75_201.fast5
├── [167M]  FAQ91555_pass_ab35bd75_202.fast5
├── [174M]  FAQ91555_pass_ab35bd75_203.fast5
├── [191M]  FAQ91555_pass_ab35bd75_204.fast5
├── [172M]  FAQ91555_pass_ab35bd75_205.fast5
├── [161M]  FAQ91555_pass_ab35bd75_206.fast5
├── [160M]  FAQ91555_pass_ab35bd75_207.fast5
├── [160M]  FAQ91555_pass_ab35bd75_208.fast5
├── [145M]  FAQ91555_pass_ab35bd75_209.fast5
└── [ 57M]  FAQ91555_pass_ab35bd75_210.fast5

0 directories, 454 files
```

</details>
<br/>

5. You have inital basecalling sequencing summary files in a single directory

<details><summary markdown="span">Expected inital basecalling sequencing summary files (click to expand)</summary>

```bash
├── [246M]  sequencing_summary_FAQ91555_05abd159.txt
└── [349M]  sequencing_summary_FAQ91555_ab35bd75.txt

0 directories, 2 files
```

</details>
<br/>
