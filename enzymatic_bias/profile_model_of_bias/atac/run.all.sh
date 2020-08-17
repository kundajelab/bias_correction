#!/bin/bash
#for fold in 0 #1 2 3 4
#do
    #./train.sh $fold 2 bias.atac 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/seed1234
    #./predict.sh $fold 2 bias.atac 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/seed1234
    #./predict.gm12878.peaks.sh $fold 2 bias.atac 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/seed1234/peak_region_preds_gm12878
#    ./score_legacy.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/seed1234 bias.atac $fold
#    ./score_legacy.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/seed1234/peak_region_preds_gm12878 gm12878.atac $fold
#done

for fold in 1 2 3 4
do
    #./train.sh $fold 2 bias.atac 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/seed1234
    #./predict.sh $fold 2 bias.atac 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/seed1234
    #./predict.gm12878.peaks.sh $fold 2 bias.atac 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/seed1234/peak_region_preds_gm12878
    ./score_legacy.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/seed1234 bias.atac $fold
    ./score_legacy.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/seed1234/peak_region_preds_gm12878 gm12878.atac $fold
done

