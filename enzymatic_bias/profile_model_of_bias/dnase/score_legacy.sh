outdir=$1
model_name=$2
fold=$3
kerasAC_score_bpnet_legacy \
    --predictions $outdir/$model_name.$fold.predictions \
    --labels $outdir/$model_name.$fold.labels \
    --losses profile counts \
    --loss_suffixes 0 1 \
    --outf $outdir/$model_name.$fold.scores \
    --title "DNASE bias, fold $fold, counts loss x18, seed 1234" \
    --label_min_to_score 2.3 \
    --label_max_to_score 11.5 &
