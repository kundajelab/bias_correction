#!/bin/bash
./train.sh 0 0 bias.dnase 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_5filter_bpnet
./predict.sh 0 0 bias.dnase 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_5filter_bpnet
./predict.gm12878.peaks.sh 0 0 bias.dnase 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_5filter_bpnet/peak_region_preds_gm12878
./predict.k562.peaks.sh 0 0 bias.dnase 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_5filter_bpnet/peak_region_preds_k562
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_5filter_bpnet bias.dnase
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_5filter_bpnet/peak_region_preds_k562 k562.dnase
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_5filter_bpnet/peak_region_preds_gm12878 gm12878.dnase
