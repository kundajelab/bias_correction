#!/bin/bash
for fold in 0 1 2 3 4
do
    
    #./train.sh 0 0 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase
    #./predict.sh 0 0 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase
    #./predict.gm12878.peaks.sh 0 0 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878
    #./predict.k562.peaks.sh 0 0 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_k562
    ./score_legacy.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/seed1234 bias.dnase $fold
    ./score_legacy.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/seed1234/peak_region_preds_k562 k562.dnase $fold
    ./score_legacy.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/seed1234/peak_region_preds_gm12878 gm12878.dnase $fold
done
