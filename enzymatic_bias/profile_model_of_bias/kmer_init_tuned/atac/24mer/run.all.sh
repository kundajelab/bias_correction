#!/bin/bash
./train.sh 0 1 bias.atac.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/24mer
./predict.sh 0 1 bias.atac.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/24mer
./predict.gm12878.peaks.sh 0 1 bias.atac.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/24mer/peak_region_preds_gm12878
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/24mer bias.atac.24mer
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/24mer/peak_region_preds_gm12878 gm12878.atac



