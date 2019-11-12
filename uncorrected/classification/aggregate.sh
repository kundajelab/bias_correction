#python ~/kerasAC/scripts/aggregate_summaries.py --file_name_prefix K562/accuracy. --file_name_suffix '' --outf perf.uncorrected.classification.K562.tsv
CELL_LINE=$1
python ~/kerasAC/scripts/aggregate_summaries.py --file_name_prefix $CELL_LINE/performance.DNASE.$CELL_LINE.classificationlabels. --file_name_suffix '' --outf perf.uncorrected.classification.$CELL_LINE.tsv
