outdir=$1
model_name=$2

for fold in 0
do
    kerasAC_score_bpnet \
	--predictions $outdir/$model_name.$fold.predictions \
	--outf $outdir/$model_name.$fold.scores \
	--title "DNASE bias, fold $fold, counts loss x0, seed 1234" \
	--losses profile counts \
	--label_min_to_score 2.3 \
	--label_max_to_score 11.5 \
	--num_tasks 1
done
