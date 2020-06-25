python get_kmer_scores.py -predictions_hdf5 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/seed1234/peak_region_preds_gm12878/gm12878.dnase.0.predictions \
       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       -outf zero_counts_loss/dnase.gm12878.0.computed.6mer.center \
       -method center \
       --flank 500 \
       --kmer_size 6 


python get_kmer_scores.py -predictions_hdf5 /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase_prof_loss_only/seed1234/peak_region_preds_gm12878/gm12878.dnase.0.predictions \
       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       -outf zero_counts_loss/dnase.gm12878.0.computed.24mer.center \
       -method center \
       --flank 500 \
       --kmer_size 24 

