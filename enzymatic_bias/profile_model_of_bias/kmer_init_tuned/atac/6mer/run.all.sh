#!/bin/bash
for fold in 0 1 2 3 4
do
    #./train.sh $fold 3 bias.atac.6mer 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/6mer/seed1234
    #./predict.sh $fold 3 bias.atac.6mer 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/6mer/seed1234
    #./predict.gm12878.peaks.sh $fold 3 bias.atac.6mer 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/6mer/seed1234/peak_region_preds_gm12878
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/6mer/seed1234 bias.atac.6mer $fold 
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/6mer/seed1234/peak_region_preds_gm12878 bias.atac.6mer $fold 
done


