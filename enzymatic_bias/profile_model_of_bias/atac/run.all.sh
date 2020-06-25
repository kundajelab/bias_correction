#!/bin/bash
./train.sh 0 2 bias.atac 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac
./predict.sh 0 2 bias.atac 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac
./predict.gm12878.peaks.sh 0 2 bias.atac 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/peak_region_preds_gm12878
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac bias.atac
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/peak_region_preds_gm12878 gm12878.atac


