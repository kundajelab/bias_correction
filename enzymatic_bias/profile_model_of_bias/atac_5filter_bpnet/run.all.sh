#!/bin/bash
for fold in 0 1 2 3 4
do
    #./train.sh $fold 3 bias.atac 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac_5filter_bpnet/seed1234
    #./predict.sh $fold 3 bias.atac 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac_5filter_bpnet/seed1234
    #./predict.gm12878.peaks.sh $fold 3 bias.atac 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac_5filter_bpnet/seed1234/peak_region_preds_gm12878
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac_5filter_bpnet/seed1234 bias.atac $fold 
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac_5filter_bpnet/seed1234/peak_region_preds_gm12878 gm12878.atac $fold 
done

