#!/bin/bash 
#ATAC-seq 
./bpnet_count_tracks_atac.sh /oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/pipeline_out/atac/SRR072187/call-align/shard-0/execution/SRR072187.4_1.merged.bam 

#DNASE
#merge across the MC17 & K52 cell lines:
samtools merge --threads 20 /oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/pipeline_out/atac/merged.SRR1565781.SRR1565782.bam /oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/pipeline_out/atac/SRR1565781/call-align/shard-0/execution/SRR1565781.1.fastq.trimmed.gz.merged.bam /oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/pipeline_out/atac/SRR1565782/call-align/shard-0/execution/glob-3bcbe4e7489c90f75e0523ac6f3a9385/SRR1565782.1.fastq.trimmed.gz.merged.bam

samtools index /oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/pipeline_out/atac/merged.SRR1565781.SRR1565782.bam

./bpnet_count_tracks_dnase.sh /oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/pipeline_out/atac/merged.SRR1565781.SRR1565782.bam 

