#!/bin/bash
for chr in `seq 1 22` X Y
do    
    python get_low_mappability_regions.py --umap_track k100.Umap.MultiTrackMappability.bw \
	   --map_thresh 0.8 \
	   --region_flank 500 \
	   --chroms chr$chr \
	   --outf k100.thresh0.8.chr$chr.bed &
done
