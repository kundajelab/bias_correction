#K562
for metric in spearmanr_nonzerobins pearsonr_nonzerobins spearmanr pearsonr 
do
    python aggregate_perf_for_plotting.py --metric_files /srv/scratch/annashch/bias_correction/gc_covariate/regression/all.perf.regression.gc.txt /srv/scratch/annashch/bias_correction/uncorrected/regression/all.perf.uncorrected.regression.tsv /srv/scratch/annashch/bias_correction/gc_covariate_200bp_ave/regression/perf.gc.regression.K562.tsv /srv/scratch/annashch/bias_correction/gc_covariate_110bpwin/regression/perf.gc.regression.K562.tsv \
	   --metric_file_labels seq.gc.1kb seq seq.gc.200bp seq.gc.110win \
	   --metric_name $metric \
	   --datasets K562 \
	   --outf K562.regression.$metric
done
for metric in auprc auroc
do
    python aggregate_perf_for_plotting.py --metric_files /srv/scratch/annashch/bias_correction/gc_covariate/classification/all.perf.gc.classification.tsv /srv/scratch/annashch/bias_correction/uncorrected/classification/all.perf.uncorrected.classification.tsv /srv/scratch/annashch/bias_correction/gc_covariate_200bp_ave/classification/perf.gc.classification.K562.tsv /srv/scratch/annashch/bias_correction/gc_covariate_110bpwin/classification/perf.gc.classification.K562.tsv \
	   --metric_file_labels seq.gc.1kb seq seq.gc.200bp seq.gc.110win \
	   --metric_name $metric \
	   --datasets K562 \
	   --outf K562.classification.$metric
done

#ALL TASKS
for metric in spearmanr_nonzerobins pearsonr_nonzerobins spearmanr pearsonr
do
    python aggregate_perf_for_plotting.py --metric_files /srv/scratch/annashch/bias_correction/gc_covariate/regression/all.perf.regression.gc.txt /srv/scratch/annashch/bias_correction/uncorrected/regression/all.perf.uncorrected.regression.tsv \
	   --metric_file_labels seq.gc.1kb seq \
	   --metric_name $metric \
	   --datasets K562 H1ESC HEPG2 GM12878 IMR90 \
	   --outf TIER1.regression.$metric
done
for metric in auprc auroc
do
    python aggregate_perf_for_plotting.py --metric_files /srv/scratch/annashch/bias_correction/gc_covariate/classification/all.perf.gc.classification.tsv /srv/scratch/annashch/bias_correction/uncorrected/classification/all.perf.uncorrected.classification.tsv \
	   --metric_file_labels seq.gc.1kb seq \
	   --metric_name $metric \
	   --datasets K562 H1ESC HEPG2 GM12878 IMR90 \
	   --outf TIER1.classification.$metric
done
