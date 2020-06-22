python get_kmer_scores.deepshap.py -predictions_pickle /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/gm12878.deepshap.bpnet.p \
       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       -outf deepshap.dnase.gm12878.0.computed.6mer.sum \
       -method sum \
       --flank 673 \
       --kmer_size 6 

python get_kmer_scores.deepshap.py -predictions_pickle /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/gm12878.deepshap.bpnet.p \
       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       -outf deepshap.dnase.gm12878.0.computed.6mer.first \
       -method first \
       --flank 673 \
       --kmer_size 6

python get_kmer_scores.deepshap.py -predictions_pickle /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/gm12878.deepshap.bpnet.p \
       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
       -outf deepshap.dnase.gm12878.0.computed.6mer.center \
       -method center \
       --flank 673 \
       --kmer_size 6

#python get_kmer_scores.deepshap.py -predictions_pickle /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/gm12878.deepshap.bpnet.p \
#       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
#       -outf deepshap.dnase.gm12878.0.computed.24mer.sum \
#       -method sum \
#       --flank 673 \
#       --kmer_size 24
#
#python get_kmer_scores.deepshap.py -predictions_pickle /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/gm12878.deepshap.bpnet.p \
#       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
#       -outf deepshap.dnase.gm12878.0.computed.24mer.first \
#       -method first \
#       --flank 673 \
#       --kmer_size 24
#
#python get_kmer_scores.deepshap.py -predictions_pickle /srv/scratch/annashch/bias_correction/enzymatic_bias/profile_model_of_bias/dnase/gm12878.deepshap.bpnet.p \
#       -fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
#       -outf deepshap.dnase.gm12878.0.computed.24mer.center \
#       -method center \
#       --flank 673 \
#       --kmer_size 24
#
