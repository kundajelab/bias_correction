#!/bin/bash
#./train.sh 0 0 bias.atac.6mer 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/6mer/atac
#./predict.sh 0 0 bias.atac.6mer 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/6mer/atac
./predict.gm12878.peaks.sh 0 0 bias.atac.6mer 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/6mer/atac/peak_region_preds_gm12878
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/6mer/atac bias.atac.6mer
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/6mer/atac/peak_region_preds_gm12878 gm12878.atac


