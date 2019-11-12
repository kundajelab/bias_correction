#!/bin/bash
db_ingest_single_threaded --tiledb_metadata tasks.tsv \
	  --tiledb_group /mnt/data/encode_dnase_tiledb/encode/dnase \
	  --overwrite \
	  --chrom_sizes /mnt/data/encode_dnase_tiledb/hg38.chrom.sizes
