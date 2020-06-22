#!/bin/bash
./train.sh 0 0 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase
./predict.sh 0 0 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase
./predict.gm12878.peaks.sh 0 0 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878
./predict.k562.peaks.sh 0 0 bias.dnase 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_k562
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase bias.dnase
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_k562 k562.dnase
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878 gm12878.dnase
