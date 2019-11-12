#python ~/kerasAC/scripts/aggregate_summaries.py --file_name_prefix K562/accuracy. --file_name_suffix '' --outf perf.uncorrected.regression.K562.tsv
CELL_LINE=$1
python ~/kerasAC/scripts/aggregate_summaries.py --file_name_prefix $CELL_LINE/performance.DNASE.$CELL_LINE.regressionlabels.withgc. --file_name_suffix '' --outf perf.gc.regression.$CELL_LINE.tsv
