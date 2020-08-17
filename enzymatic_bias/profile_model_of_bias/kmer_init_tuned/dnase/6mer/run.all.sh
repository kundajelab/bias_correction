#!/bin/bash
for fold in 0 1 2 3 4
do 
    #./train.sh $fold 1 bias.dnase.6mer 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/6mer/seed2345
    #./predict.sh $fold 1 bias.dnase.6mer 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/6mer/seed2345
    #./predict.gm12878.peaks.sh $fold 1 bias.dnase.6mer 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/6mer/seed2345/peak_region_preds_gm12878
    #./predict.k562.peaks.sh $fold 1 bias.dnase.6mer 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/6mer/seed2345/peak_region_preds_k562
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/6mer/seed2345 bias.dnase.6mer $fold 
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/6mer/seed2345/peak_region_preds_gm12878 gm12878.dnase $fold 
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/6mer/seed2345/peak_region_preds_k562 k562.dnase $fold 
done


