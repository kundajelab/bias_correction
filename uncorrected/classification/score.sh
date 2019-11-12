#!/bin/bash
CELL_LINE=$1
for i in 1 #`seq 0 9`
do
kerasAC_score --labels_hdf5 $CELL_LINE/predictions.DNASE.$CELL_LINE.classificationlabels.$i.labels.0 \
	      --predictions_hdf5 $CELL_LINE/predictions.DNASE.$CELL_LINE.classificationlabels.$i.predictions.0\
	      --performance_metrics_classification_file $CELL_LINE/performance.DNASE.$CELL_LINE.classificationlabels.$i \
	      --tasks $CELL_LINE &
done
