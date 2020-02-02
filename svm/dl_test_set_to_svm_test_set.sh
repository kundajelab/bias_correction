#!/bin/bash

#THIS IS LEGACY CODE TO PARSE THE FULL TEST SET, THIS IS TOO BIG FOR SVM TRAINING, SO ITS COMMENTED OUT AND NOT USED 
#get the peaks 
#python dl_test_set_to_bed_file.py \
#       --hdf5 /srv/scratch/annashch/5_cell_lines_bias_correction/genomewide_labels/classificationlabels.SummitWithin200bpCenter.hdf5 \
#       --outf classificationlabels.SummitWithin200bpCenter.bed

#split peaks into test sets
#mkdir genomewide_svminputs
#for fold in `seq 0 9`
#do
#    python get_svm_peak_splits.py --narrowPeak classificationlabels.SummitWithin200bpCenter.bed --nosort --no_train --out_prefix genomewide_svminputs/genomewide_svminputs --genome hg38 --folds $fold &
#done


#USE THIS INSTEAD TO SUBSAMPLE THE DL TEST SET TO 100K regions

python subsample_genomewide_testset_for_svm.py

#extract fasta file
for task in GM12878 H1ESC HEPG2 IMR90 K562
do
    for fold in `seq 0 9`
    do
	bedtools getfasta -fi /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta -bed genomewide_svminputs/$fold.$task.positives > genomewide_svminputs/$fold.$task.positives.fa 
	bedtools getfasta -fi /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta -bed genomewide_svminputs/$fold.$task.negatives > genomewide_svminputs/$fold.$task.negatives.fa 
    
    done
done

