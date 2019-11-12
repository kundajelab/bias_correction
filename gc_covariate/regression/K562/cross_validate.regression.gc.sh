#!/bin/bash
CELL_LINE=$1
[ -d $CELL_LINE ] || mkdir $CELL_LINE
CUDA_VISIBLE_DEVICES=0 kerasAC_cross_validate --index_data_path DNASE.K562.regressionlabels.allbins.hdf5 \
		    --input_data_path seq /srv/scratch/annashch/deeplearning/gc_experiments/k562/gc_hg38_110bp.hdf5 \
		    --output_data_path  DNASE.K562.regressionlabels.allbins.hdf5 \
		    --upsample_thresh_list_train 0 0.1 \
		    --upsample_ratio_list_train 0.7 \
		    --upsample_thresh_list_eval 0 0.1 \
		    --upsample_ratio_list_eval 0.98 \
		    --num_inputs 2 \
		    --num_outputs 1 \
		    --model_hdf5 DNASE.$CELL_LINE.regressionlabels.withgc \
		    --ref_fasta /users/annashch/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta \
		    --batch_size 200 \
		    --architecture_spec functional_basset_regression_gc_corrected \
		    --num_train 1000000 \
		    --num_valid 1000000 \
		    --num_tasks 1 \
		    --threads 2 \
		    --max_queue_size 100 \
		    --init_weights /srv/scratch/annashch/deeplearning/encode-roadmap.dnase_tf-chip.batch_256.params.npz \
		    --patience 1 \
		    --patience_lr 2 \
		    --expand_dims \
		    --predictions_and_labels_hdf5 predictions.DNASE.$CELL_LINE.regressionlabels.withgc \
		    --performance_metrics_regression_file performance.DNASE.$CELL_LINE.regressionlabels.withgc


