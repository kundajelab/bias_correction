samtools view --threads 50 -F 780  -q 30 -O BAM -o GM12878.filtered.bam /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/atac/13da5ebe-0941-4855-8599-40bbcc5c58b4/call-bowtie2/shard-0/execution/ENCSR000EMT.merged.bam
samtools index GM12878.filtered.bam

samtools view --threads 50 -F 780  -q 30 -O BAM -o H1ESC.filtered.bam /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/atac/c9ef8473-1374-41ef-9fab-8f07288e94e7/call-bowtie2/shard-0/execution/ENCSR000EMU.merged.bam
samtools index H1ESC.filtered.bam

samtools view --threads 50 -F 780  -q 30 -O BAM -o K562.filtered.bam /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/atac/09ce5f39-5360-411b-88dd-b86f4a1286a7/call-bowtie2/shard-0/execution/ENCSR000EOT.merged.bam
samtools index K562.filtered.bam

samtools view --threads 50 -F 780  -q 30 -O BAM -o HEPG2.filtered.bam /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/atac/38f0a76b-e6c6-444e-84e5-b5a98a554694/call-bowtie2/shard-0/execution/ENCSR149XIL.merged.bam
samtools index HEPG2.filtered.bam 

samtools view --threads 50 -F 780  -q 30 -o BAM -o IMR90.filtered.bam /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/atac/f38bfd43-b57f-4c55-be06-b02d3f16512a/call-bowtie2/shard-0/execution/ENCSR477RTP.merged.bam
samtools index IMR90.filtered.bam

