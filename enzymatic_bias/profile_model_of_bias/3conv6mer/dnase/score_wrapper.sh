#!/bin/bash 
#./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/3conv6mer/dnase bias.dnase.6mer.3conv
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/3conv6mer/dnase/peak_region_preds_k562 k562.dnase
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/3conv6mer/dnase/peak_region_preds_gm12878 gm12878.dnase

