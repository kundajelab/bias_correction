#!/bin/bash 
cur_bam=$1

#unfortunately alignmentSieve does not output to standard out, so the ATAC shift + bamCoverage need to be done in 2 steps 
#non-stranded (can be PE or SE) 
alignmentSieve --ATACshift -p16 --samFlagExclude 780 --minMappingQuality 30 -b $cur_bam -o $cur_bam.shifted.filtered.bam
samtools index $cur_bam.shifted.filtered.bam
bamCoverage -p16 -v --binSize 1 --Offset 1 1 -b $cur_bam.shifted.filtered.bam  -o $cur_bam.bpnet.unstranded.bw

#forward strand -- assumes SE data
alignmentSieve --ATACshift -p16 --samFlagExclude 796 --minMappingQuality 30 -b $cur_bam -o $cur_bam.shifted.filtered.plus.bam
bamCoverage -p16 -v --binSize 1 --Offset 1 1 -b $cur_bam.shifted.filtered.plus.bam -o $cur_bam.bpnet.plus.bw

#reverse strand -- assumes SE data
alignmentSieve --ATACshift -p16 --samFlagExclude 780 --samFlagInclude 16 --minMappingQuality 30 -b $cur_bam -o $cur_bam.shifted.filtered.minus.bam
bamCoverage -p16 -v --binSize 1 --Offset 1 1 -b $cur_bam.shifted.filtered.minus.bw -o $cur_bam.bpnet.minus.bw
