samtools merge --threads 50 H1ESC.merged.bam /oak/stanford/groups/akundaje/projects/ENCODE_bulk/atac/caper_out/58fb3f13-be45-45de-8a39-d0bfbeaf86c5/call-align/shard-1/glob-3bcbe4e7489c90f75e0523ac6f3a9385/H1-Frozen-F-Dnase-NP40-T20-2_R1.bam /oak/stanford/groups/akundaje/projects/ENCODE_bulk/atac/caper_out/58fb3f13-be45-45de-8a39-d0bfbeaf86c5/call-align/shard-0/glob-3bcbe4e7489c90f75e0523ac6f3a9385/H1-Frozen-F-Dnase-NP40-T20-1_R1.bam
samtools view --threads 50 -F 780 -q 30 -O BAM -o H1ESC.merged.filtered.bam H1ESC.merged.bam
samtools index H1ESC.merged.filtered.bam

