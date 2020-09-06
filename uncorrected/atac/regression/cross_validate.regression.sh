#!/bin/bash
CELL_LINE=$1
echo "$CELL_LINE/predictions.ATAC.$CELL_LINE.regressionlabels"
[ -d $CELL_LINE ] || mkdir $CELL_LINE
CUDA_VISIBLE_DEVICES=3 kerasAC_cross_validate --index_data_path /srv/scratch/annashch/bias_correction/genomewide_labels/atac/regressionlabels.allbins.hg38.hdf5 \
		    --input_data_path seq \
		    --output_data_path /srv/scratch/annashch/bias_correction/genomewide_labels/atac/regressionlabels.allbins.hg38.hdf5 \
		    --upsample_thresh_list_train 0 0.1 \
		    --upsample_ratio_list_train 0.7 \
		    --upsample_thresh_list_eval 0 0.1 \
		    --upsample_ratio_list_eval 0.98 \
		    --num_inputs 1 \
		    --num_outputs 1 \
		    --model_hdf5 $CELL_LINE/ATAC.$CELL_LINE.regressionlabels \
		    --ref_fasta /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
		    --batch_size 200 \
		    --architecture_spec functional_basset_regression \
		    --num_train 1000000 \
		    --num_valid 1000000 \
		    --num_tasks 1 \
		    --threads 2 \
		    --max_queue_size 100 \
		    --init_weights /srv/scratch/annashch/deeplearning/encode-roadmap.atac_tf-chip.batch_256.params.npz \
		    --patience 1 \
		    --patience_lr 2 \
		    --expand_dims \
		    --predictions_and_labels_hdf5 $CELL_LINE/predictions.ATAC.$CELL_LINE.regressionlabels \
		    --performance_metrics_regression_file $CELL_LINE/performance.ATAC.$CELL_LINE.regressionlabels \
		    --tasks $CELL_LINE \
		    --index_tasks $CELL_LINE \
		    --splits 0 1 2 3 4 5 6 7 8 9


