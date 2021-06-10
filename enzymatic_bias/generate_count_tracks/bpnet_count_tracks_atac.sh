#!/bin/bash 
cur_bam=$1

#unfortunately alignmentSieve does not output to standard out, so the ATAC shift + bamCoverage need to be done in 2 steps 
#non-stranded (can be PE or SE) 
#alignmentSieve --ATACshift -p40 --samFlagExclude 780 --minMappingQuality 30 -b $cur_bam -o $cur_bam.shifted.filtered.bam
samtools sort -@ 40 -O BAM -o $cur_bam.shifted.filtered.sorted.bam $cur_bam.shifted.filtered.bam
samtools index $cur_bam.shifted.filtered.sorted.bam
bamCoverage -p40 -v --binSize 1 --Offset 1 1 -b $cur_bam.shifted.filtered.sorted.bam  -o $cur_bam.bpnet.unstranded.bw

#forward strand -- assumes SE data
alignmentSieve --ATACshift -p40 --samFlagExclude 796 --minMappingQuality 30 -b $cur_bam -o $cur_bam.shifted.filtered.plus.bam
samtools sort -@ 40 -O BAM -o $cur_bam.shifted.filtered.plus.sorted.bam $cur_bam.shifted.filtered.plus.bam
samtools index $cur_bam.shifted.filtered.plus.sorted.bam
bamCoverage -p40 -v --binSize 1 --Offset 1 1 -b $cur_bam.shifted.filtered.plus.sorted.bam -o $cur_bam.bpnet.plus.bw

#reverse strand -- assumes SE data
alignmentSieve --ATACshift -p40 --samFlagExclude 780 --samFlagInclude 16 --minMappingQuality 30 -b $cur_bam -o $cur_bam.shifted.filtered.minus.bam
samtools sort -@ 40 -O BAM -o $cur_bam.shifted.filtered.minus.sorted.bam $cur_bam.shifted.filtered.minus.bam
samtools index $cur_bam.shifted.filtered.minus.sorted.bam
bamCoverage -p40 -v --binSize 1 --Offset 1 1 -b $cur_bam.shifted.filtered.minus.sorted.bam -o $cur_bam.bpnet.minus.bw
