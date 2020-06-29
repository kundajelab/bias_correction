#!/bin/bash
./train.sh 0 3 bias.atac 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac_5filter_bpnet
./predict.sh 0 3 bias.atac 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac_5filter_bpnet
./predict.gm12878.peaks.sh 0 3 bias.atac 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac_5filter_bpnet/peak_region_preds_gm12878
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac_5filter_bpnet bias.atac
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac_5filter_bpnet/peak_region_preds_gm12878 gm12878.atac


