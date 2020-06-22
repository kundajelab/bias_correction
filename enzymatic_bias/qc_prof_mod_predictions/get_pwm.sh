#for kmer_list in atac.gm12878.0.computed.24mer.sum atac.gm12878.0.computed.6mer.sum dnase.gm12878.0.computed.24mer.sum dnase.gm12878.0.computed.6mer.sum dnase.k562.0.computed.24mer.sum dnase.k562.0.computed.6mer.sum atac.gm12878.0.computed.24mer.first atac.gm12878.0.computed.6mer.first dnase.gm12878.0.computed.24mer.first dnase.gm12878.0.computed.6mer.first dnase.k562.0.computed.24mer.first dnase.k562.0.computed.6mer.first atac.gm12878.0.computed.24mer.center atac.gm12878.0.computed.6mer.center dnase.gm12878.0.computed.24mer.center dnase.gm12878.0.computed.6mer.center dnase.k562.0.computed.24mer.center dnase.k562.0.computed.6mer.center

for kmer_list in atac.gm12878.0.computed.24mer.sum dnase.gm12878.0.computed.24mer.sum dnase.k562.0.computed.24mer.sum  atac.gm12878.0.computed.24mer.first dnase.gm12878.0.computed.24mer.first dnase.k562.0.computed.24mer.first atac.gm12878.0.computed.24mer.center dnase.gm12878.0.computed.24mer.center dnase.k562.0.computed.24mer.center 
do
    echo "starting $kmer_list" 
    python get_pwm.py --kmer_list $kmer_list --outf pwm.$kmer_list.new --type prob  --k 24 &
    echo "finished $kmer_list"
done
