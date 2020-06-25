#for kmer_list in atac.gm12878.0.computed.24mer.sum atac.gm12878.0.computed.6mer.sum dnase.gm12878.0.computed.24mer.sum dnase.gm12878.0.computed.6mer.sum dnase.k562.0.computed.24mer.sum dnase.k562.0.computed.6mer.sum atac.gm12878.0.computed.24mer.first atac.gm12878.0.computed.6mer.first dnase.gm12878.0.computed.24mer.first dnase.gm12878.0.computed.6mer.first dnase.k562.0.computed.24mer.first dnase.k562.0.computed.6mer.first atac.gm12878.0.computed.24mer.center atac.gm12878.0.computed.6mer.center dnase.gm12878.0.computed.24mer.center dnase.gm12878.0.computed.6mer.center dnase.k562.0.computed.24mer.center dnase.k562.0.computed.6mer.center

for k in 24 #6 24
do
    for input in atac.gm12878.0.computed dnase.gm12878.0.computed dnase.k562.0.computed 
    do
	echo "starting $kmer_list" 
	python get_pwm.py --kmer_list $input.$k\mer.center --outf pwm.$input.$k\mer.center --type prob  --k $k &
	echo "finished $kmer_list"
    done
done
