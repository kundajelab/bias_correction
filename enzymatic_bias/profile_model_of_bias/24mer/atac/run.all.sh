#!/bin/bash
for fold in 0 
do
    #./train.sh $fold 3 bias.atac.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/seed3456
    #./predict.sh $fold 3 bias.atac.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/seed3456
    #./predict.gm12878.peaks.sh $fold 3 bias.atac.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/seed3456/peak_region_preds_gm12878
    ./score_legacy.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/seed3456 bias.atac.24mer $fold
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/seed3456/peak_region_preds_gm12878 gm12878.atac $fold 
done


for fold in 1 2 3 4
do
    #./train.sh $fold 3 bias.atac.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/seed3456
    #./predict.sh $fold 3 bias.atac.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/seed3456
    #./predict.gm12878.peaks.sh $fold 3 bias.atac.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/seed3456/peak_region_preds_gm12878
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/seed3456 bias.atac.24mer $fold
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/seed3456/peak_region_preds_gm12878 gm12878.atac $fold 
done
