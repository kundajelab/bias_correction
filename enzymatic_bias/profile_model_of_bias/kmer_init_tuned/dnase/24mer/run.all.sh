#!/bin/bash
./train.sh 0 1 bias.dnase.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/24mer
./predict.sh 0 1 bias.dnase.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/24mer
./predict.gm12878.peaks.sh 0 1 bias.dnase.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/24mer/peak_region_preds_gm12878
./predict.k562.peaks.sh 0 1 bias.dnase.24mer 3456 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/24mer/peak_region_preds_k562
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/24mer bias.dnase.24mer
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/24mer/peak_region_preds_gm12878 gm12878.dnase
./score.sh /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/kmer_init_tuned/dnase/24mer/peak_region_preds_k562 k562.dnase



