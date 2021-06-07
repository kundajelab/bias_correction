samtools merge --threads 50 GM12878.merged.bam /oak/stanford/groups/akundaje/projects/ENCODE_bulk/atac/caper_out/5846e593-a935-4bd9-9294-422a05f9f9b8/call-align/shard-1/glob-3bcbe4e7489c90f75e0523ac6f3a9385/GM12878_F_Dnase_NP40_T20_2_R1.bam /oak/stanford/groups/akundaje/projects/ENCODE_bulk/atac/caper_out/5846e593-a935-4bd9-9294-422a05f9f9b8/call-align/shard-0/glob-3bcbe4e7489c90f75e0523ac6f3a9385/GM12878_F_Dnase_NP40_T20_1_R1.bam /oak/stanford/groups/akundaje/projects/ENCODE_bulk/atac/caper_out/5846e593-a935-4bd9-9294-422a05f9f9b8/call-align/shard-2/glob-3bcbe4e7489c90f75e0523ac6f3a9385/GM12878_F_Dnase_NP40_T20_3_R1.bam
samtools view --threads 50 -F 780 -q 30 -O BAM -o GM12878.merged.filtered.bam GM12878.merged.bam
samtools index GM12878.merged.filtered.bam


