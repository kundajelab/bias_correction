# bias_correction
Bias correction -- GC and enzymatic bias 

Datasets for ISMB paper are ENCODE Tier 1 cell line DNAse samples reprocessed with the ENCODE DCC pipeline 

GM12878 -- https://www.encodeproject.org/experiments/ENCSR000EMT/
/oak/stanford/groups/akundaje/projects/atlas/dnase_processed/atac/13da5ebe-0941-4855-8599-40bbcc5c58b4


K562 -- https://www.encodeproject.org/experiments/ENCSR000EOY/
/oak/stanford/groups/akundaje/projects/atlas/dnase_processed/k562_dnase


H1ESC --https://www.encodeproject.org/experiments/ENCSR000EMU/
/oak/stanford/groups/akundaje/projects/atlas/dnase_processed/atac/c9ef8473-1374-41ef-9fab-8f07288e94e7


HEPG2 --https://www.encodeproject.org/experiments/ENCSR149XIL/
/oak/stanford/groups/akundaje/projects/atlas/dnase_processed/atac/39e50d95-1423-4dca-acd1-4b685ab94c4c

IMR90 --https://www.encodeproject.org/experiments/ENCSR477RTP/
/oak/stanford/groups/akundaje/projects/atlas/dnase_processed/atac/b9e61b7e-4173-4b8c-aa38-9e55d81fef0e


aggregate_perf_for_plotting/
gc_covariate/ -- models for the 5 tasks, gc corrected 
uncorrected/ -- model for the 5 tasks, not gc corrected

gc_covariate_110bpwindow/ -- models for k562 with 110 smoothed windows 
gc_covariate_200bp_ave/ -- models for k562 with gc for central 200 bp

genomewide_gc/ --scripts to calculate gc content 
genomewide_labels/ -- hdf5 seqdataloader outputs 
interpretation/ 
tiledb_inputs/

