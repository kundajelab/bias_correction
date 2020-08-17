#!/bin/bash
for fold in 0 1 2 3 4
do
    #./train.sh $fold 2 bias.dnase 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/seed1234
    #./predict.sh $fold 2 bias.dnase 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/seed1234
    #./predict.k562.peaks.sh $fold 2 bias.dnase 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/seed1234/peak_region_preds_k562
    #./predict.gm12878.peaks.sh $fold 2 bias.dnase 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/seed1234/peak_region_preds_gm12878
    ./score.sh  /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/seed1234 bias.dnase $fold 
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/seed1234/peak_region_preds_k562 k562.dnase $fold 
    ./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/seed1234/peak_region_preds_gm12878 gm12878.dnase $fold 
done
