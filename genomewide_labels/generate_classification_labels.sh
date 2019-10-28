genomewide_labels --task_list tasks.tsv \
		  --outf classificationlabels.SummitWithin200bpCenter.tsv.gz \
		  --output_type hdf5 \
		  --chrom_sizes /mnt/data/annotations/by_release/hg38/hg38.chrom.sizes \
		  --bin_stride 50 \
		  --left_flank 400 \
		  --right_flank 400 \
		  --bin_size 200 \
		  --task_threads 2 \
		  --chrom_threads 25 \
		  --allow_ambiguous \
	          --labeling_approach peak_summit_in_bin_classification

