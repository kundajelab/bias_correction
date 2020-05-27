prefix=/srv/scratch/annashch/bias_correction/enzymatic_bias_kmer/
smooth_bigwig -input_bigwig $prefix/hg38.kmer.bias.atac.bw -output_bigwig $prefix/hg38.kmer.bias.atac.5bp.smooth.bw --flank 2 &
smooth_bigwig -input_bigwig $prefix/hg38.kmer.bias.dnase.doublehit.bw -output_bigwig $prefix/hg38.kmer.bias.dnase.doublehit.smooth.bw --flank 2 & 
smooth_bigwig -input_bigwig $prefix/hg38.kmer.bias.dnase.singlehit.bw -output_bigwig $prefix/hg38.kmer.bias.dnase.singlehit.smooth.bw --flank 2 &
smooth_bigwig -input_bigwig $prefix/hg38.kmer.bias.dnase.vierstra.bw -output_bigwig $prefix/hg38.kmer.bias.dnase.vierstra.smooth.bw --flank 2 &

