#samtools merge --threads 50 HEPG2.merged.bam /oak/stanford/groups/akundaje/projects/ENCODE_bulk/atac/caper_out/25b3429e-5864-4e8d-a475-a92df8938887/call-align/shard-0/glob-3bcbe4e7489c90f75e0523ac6f3a9385/HepG2_Frozen_Ficoll_Dnase_NP40_T20_1_R1.bam /oak/stanford/groups/akundaje/projects/ENCODE_bulk/atac/caper_out/25b3429e-5864-4e8d-a475-a92df8938887/call-align/shard-1/glob-3bcbe4e7489c90f75e0523ac6f3a9385/HepG2_Frozen_Ficoll_Dnase_NP40_T20_2_R1.bam
samtools view --threads 50 -F 780  -q 30 -O BAM -o HEPG2.merged.filtered.bam HEPG2.merged.bam
samtools index HEPG2.merged.filtered.bam

