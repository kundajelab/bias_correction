#python ~/kerasAC/scripts/aggregate_summaries.py --file_name_prefix K562/accuracy. --file_name_suffix '' --outf perf.uncorrected.classification.K562.tsv
CELL_LINE=$1
python ~/kerasAC/scripts/aggregate_summaries.py --file_name_prefix $CELL_LINE/performance.DNASE.$CELL_LINE.classificationlabels.withgc. --file_name_suffix '' --outf perf.gc.classification.$CELL_LINE.tsv
