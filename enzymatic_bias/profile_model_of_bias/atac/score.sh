for fold in `seq 0 4`
do
    kerasAC_score_bpnet \
	--labels predictions.gm12878.withdups.1234seed.64counts.$fold.labels \
	--predictions predictions.gm12878.withdups.1234seed.64counts.$fold.predictions \
	--losses profile counts \
	--loss_suffixes 0 1 \
	--outf score.gm12878.64counts.1234seed.$fold \
	--title "GM12878, fold $fold, counts loss x64, seed 1234" \
	--pseudoreps /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/atac/13da5ebe-0941-4855-8599-40bbcc5c58b4/call-bowtie2/shard-0/execution/ENCSR000EMT.merged.bam.pr1.bam.bpnet.unstranded.bw /oak/stanford/groups/akundaje/projects/atlas/dnase_processed/atac/13da5ebe-0941-4855-8599-40bbcc5c58b4/call-bowtie2/shard-0/execution/ENCSR000EMT.merged.bam.pr2.bam.bpnet.unstranded.bw
done
