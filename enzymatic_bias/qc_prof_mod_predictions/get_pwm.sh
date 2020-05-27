python get_pwm.py --predictions_hdf5_profile /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/peak_region_preds_gm12878/gm12878.atac.0.predictions.0 \
       --predictions_hdf5_counts /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/peak_region_preds_gm12878/gm12878.atac.0.predictions.1 \
       --fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       --flank 500 \
       --kmer_size 6 \
       --outf atac.gm12878.0.computed.kmer


python get_pwm.py --predictions_hdf5_profile /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.0 \
       --predictions_hdf5_counts /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_gm12878/gm12878.dnase.0.predictions.1 \
       --fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       --flank 500 \
       --kmer_size 6 \
       --outf dnase.gm12878.0.computed.kmer

python get_pwm.py --predictions_hdf5_profile /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_k562/k562.dnase.0.predictions.0 \
       --predictions_hdf5_counts /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/peak_region_preds_k562/k562.dnase.0.predictions.1 \
       --fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       --flank 500 \
       --kmer_size 6 \
       --outf dnase.k562.0.computed.kmer

