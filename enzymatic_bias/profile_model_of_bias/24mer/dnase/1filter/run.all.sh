#!/bin/bash
./train.sh 0 3 bias.dnase.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/dnase/1filter
./predict.sh 0 3 bias.dnase.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/dnase/1filter
./predict.k562.peaks.sh 0 3 bias.dnase.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/dnase/1filter/peak_region_preds_k562
./predict.gm12878.peaks.sh 0 3 bias.dnase.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/dnase/1filter/peak_region_preds_gm12878
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/dnase/1filter bias.dnase.24mer
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/dnase/1filter/peak_region_preds_k562 k562.dnase
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/24mer/dnase/1filter/peak_region_preds_gm12878 gm12878.dnase