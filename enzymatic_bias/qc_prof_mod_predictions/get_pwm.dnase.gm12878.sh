python get_pwm.py -predictions_hdf5_profile /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.0 \
       -predictions_hdf5_counts /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.1 \
       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       -outf dnase.gm12878.0.computed.6mer.sum \
       -method sum \
       --flank 500 \
       --kmer_size 6 &

python get_pwm.py -predictions_hdf5_profile /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.0 \
       -predictions_hdf5_counts /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.1 \
       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       -outf dnase.gm12878.0.computed.6mer.first \
       -method first \
       --flank 500 \
       --kmer_size 6 &

python get_pwm.py -predictions_hdf5_profile /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.0 \
       -predictions_hdf5_counts /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.1 \
       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       -outf dnase.gm12878.0.computed.6mer.center \
       -method center \
       --flank 500 \
       --kmer_size 6 &

python get_pwm.py -predictions_hdf5_profile /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.0 \
       -predictions_hdf5_counts /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.1 \
       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       -outf dnase.gm12878.0.computed.24mer.sum \
       -method sum \
       --flank 500 \
       --kmer_size 24 &

python get_pwm.py -predictions_hdf5_profile /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.0 \
       -predictions_hdf5_counts /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.1 \
       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       -outf dnase.gm12878.0.computed.24mer.first \
       -method first \
       --flank 500 \
       --kmer_size 24 &

python get_pwm.py -predictions_hdf5_profile /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.0 \
       -predictions_hdf5_counts /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.1 \
       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       -outf dnase.gm12878.0.computed.24mer.center \
       -method center \
       --flank 500 \
       --kmer_size 24 &

