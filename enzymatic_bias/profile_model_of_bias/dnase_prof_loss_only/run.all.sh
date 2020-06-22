#!/bin/bash
./train.sh 0 1 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only
./predict.sh 0 1 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only
./predict.k562.peaks.sh 0 1 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/peak_region_preds_k562
./predict.gm12878.peaks.sh 0 1 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/peak_region_preds_gm12878
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/ bias.dnase
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/peak_region_preds_k562 k562.dnase
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/peak_region_preds_gm12878 gm12878.dnase
