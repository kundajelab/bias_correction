for method in center sum first
do
    python get_pwm.deepshap.py -predictions_pickle /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/gm12878.deepshap.bpnet.p -prediction_kmer_scores dnase.gm12878.0.computed.6mer.$method -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta -outf deepshap.pwm.dnase.gm12878.6mer.$method &


    python get_pwm.deepshap.py -predictions_pickle /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/k562.deepshap.bpnet.p -prediction_kmer_scores dnase.k562.0.computed.6mer.$method -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta -outf deepshap.pwm.dnase.k562.6mer.$method &


    python get_pwm.deepshap.py -predictions_pickle /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/atac/gm12878.atac.deepshap.bpnet.p -prediction_kmer_scores atac.gm12878.0.computed.6mer.$method -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta -outf deepshap.pwm.atac.gm12878.6mer.$method & 
done
