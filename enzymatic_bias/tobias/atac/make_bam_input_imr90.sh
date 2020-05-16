samtools merge --threads 50 IMR90.merged.bam /oak/stanford/groups/akundaje/projects/ENCODE_bulk/atac/caper_out/277549db-c2d8-49d3-ace0-81ad5d4088fb/call-align/shard-1/glob-3bcbe4e7489c90f75e0523ac6f3a9385/IMR90-2-P14_R1.bam /oak/stanford/groups/akundaje/projects/ENCODE_bulk/atac/caper_out/277549db-c2d8-49d3-ace0-81ad5d4088fb/call-align/shard-0/glob-3bcbe4e7489c90f75e0523ac6f3a9385/IMR90-1-P14_R1.bam
samtools view --threads 50 -F 780 -q 30 -O BAM -o IMR90.merged.filtered.bam IMR90.merged.bam
samtools index IMR90.merged.filtered.bam

