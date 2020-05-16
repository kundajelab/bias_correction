#!/bin/bash
task_name=$1
db_ingest_single_threaded --tiledb_metadata $task_name.tsv \
	  --tiledb_group $task_name \
	  --chrom_sizes ~/hg38.chrom.sizes \
	  --attribute_config generic_bigwig \
	  --coord_tile_size 10000 \
	  --task_tile_size 1 \
	  --write_chunk 30000000



