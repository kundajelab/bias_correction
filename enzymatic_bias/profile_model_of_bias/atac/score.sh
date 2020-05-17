outdir=$1
model_name=$2

for fold in 0
do
    kerasAC_score_bpnet \
	--labels $outdir/$model_name.$fold.labels \
	--predictions $outdir/$model_name.$fold.predictions \
	--losses profile counts \
	--loss_suffixes 0 1 \
	--outf $outdir/$model_name.$fold.scores \
	--title "ATAC bias, fold $fold, counts loss x7, seed 1234" \
	--label_min_to_score 2.3 \
	--label_max_to_score 11.5

done
