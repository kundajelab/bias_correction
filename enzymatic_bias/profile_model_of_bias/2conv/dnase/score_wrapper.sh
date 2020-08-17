#!/bin/bash 
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/2conv/dnase bias.dnase.24mer.2conv
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/2conv/dnase/peak_region_preds_k562/ k562.dnase
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/2conv/dnase/peak_region_preds_gm12878/ gm12878.dnase


