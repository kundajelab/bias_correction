
#for kmer_list in atac.gm12878.0.computed.24mer.sum dnase.gm12878.0.computed.24mer.sum dnase.k562.0.computed.24mer.sum  atac.gm12878.0.computed.24mer.first dnase.gm12878.0.computed.24mer.first dnase.k562.0.computed.24mer.first atac.gm12878.0.computed.24mer.center dnase.gm12878.0.computed.24mer.center dnase.k562.0.computed.24mer.center
#for kmer_list in deepshap.dnase.k562.0.computed.6mer.center.profile deepshap.dnase.k562.0.computed.6mer.sum.profile deepshap.dnase.k562.0.computed.6mer.first.profile
#for kmer_list in deepshap.dnase.gm12878.0.computed.6mer.center.profile deepshap.dnase.gm12878.0.computed.6mer.sum.profile deepshap.dnase.gm12878.0.computed.6mer.first.profile
for kmer_list in deepshap.atac.gm12878.0.computed.6mer.center.profile deepshap.atac.gm12878.0.computed.6mer.sum.profile deepshap.atac.gm12878.0.computed.6mer.first.profile
do
    echo "starting $kmer_list" 
    python get_pwm.py --kmer_list $kmer_list --outf deepshap.pwm.$kmer_list --type prob  --k 6 
    echo "finished $kmer_list"
done
#do
#    echo "starting $kmer_list" 
#    python get_pwm.py --kmer_list $kmer_list --outf deepshap.pwm.$kmer_list --type prob  --k 24 
#    echo "finished $kmer_list"
#done
