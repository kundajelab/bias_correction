for k in 24 #6 24
do
    for input in dnase.gm12878.0.computed 
    do
	echo "starting $kmer_list" 
	python get_pwm.py --kmer_list zero_counts_loss/$input.$k\mer.center --outf zero_counts_loss/pwm.$input.$k\mer.center --type prob  --k $k 
	echo "finished $kmer_list"
    done
done
