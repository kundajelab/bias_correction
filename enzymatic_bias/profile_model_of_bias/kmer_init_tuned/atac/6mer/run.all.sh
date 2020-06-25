#!/bin/bash
./train.sh 0 3 bias.atac.6mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/6mer
./predict.sh 0 3 bias.atac.6mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/6mer
./predict.gm12878.peaks.sh 0 3 bias.atac.6mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/6mer/peak_region_preds_gm12878
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/6mer bias.atac.6mer
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/atac/6mer/peak_region_preds_gm12878 bias.atac.6mer



