#!/bin/bash
task_name=$1
db_ingest --tiledb_metadata $task_name.task.tsv \
	  --array_name $task_name \
	  --chrom_sizes ~/hg38.chrom.sizes \
	  --attribute_config generic_bigwig \
	  --coord_tile_size 10000 \
	  --task_tile_size 1 \
	  --write_chunk 30000000 \
	  --threads 20 \
	  --max_queue_size 50 \
	  --max_mem_g 200 




