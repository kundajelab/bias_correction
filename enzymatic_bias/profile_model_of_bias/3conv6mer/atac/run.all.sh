#!/bin/bash
for fold in 0 1 2 3 4
do
    #./train.sh $fold 3 bias.atac.6mer.3conv 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/3conv6mer/atac/seed1234
    #./predict.sh $fold 3 bias.atac.6mer.3conv 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/3conv6mer/atac/seed1234
    #./predict.gm12878.peaks.sh $fold 3 bias.atac.6mer.3conv 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/3conv6mer/atac/seed1234/peak_region_preds_gm12878
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/3conv6mer/atac/seed1234 bias.atac.6mer.3conv $fold 
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/3conv6mer/atac/seed1234/peak_region_preds_gm12878 gm12878.atac $fold 
done

