#!/bin/bash
./predict.k562.peaks.sh 0 3 bias.dnase.6mer.3conv 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/3conv6mer/dnase peak_region_preds_k562
./predict.gm12878.peaks.sh 0 3 bias.dnase.6mer.3conv 1234 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/3conv6mer/dnase peak_region_preds_gm12878
