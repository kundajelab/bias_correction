#!/bin/bash
#./train.sh 0 0 bias.atac.24mer 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/1filter
#./predict.sh 0 0 bias.atac.24mer 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/1filter
#./predict.gm12878.peaks.sh 0 0 bias.atac.24mer 2345 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/1filter/peak_region_preds_gm12878
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/1filter bias.atac.24mer
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/atac/1filter/peak_region_preds_gm12878 gm12878.atac


