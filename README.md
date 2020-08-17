The trained bias models for ATAC & DNASE are on the Kundaje lab cluster : `/mnt/lab_data2/bia_correction`


# To train bpnet ATAC/DNASE with Bias correction: 

1) Populate data files in ./data folder  
As a reminder, you can generate stranded & unstranded counts from your bam pipeline outputs with this script:  
https://github.com/kundajelab/atlas_resources/blob/master/augment_dnase_pipeline_outputs/bpnet_count_tracks/bpnet_count_tracks.sh  

2) `./tiledb/db_ingest.sh` to generate tiledb database  

3) `./get_loss_weights.sh` Get the counts loss weight

4) `./pred_from_bias/run.sh` Get model predictions from bias (i.e. freeze sequence component)  

5) `./bias_corrected_bpnet/run.sh` Get model predictions from sequence, plugging in frozen bias component  
The full model is outlined here:  
https://app.lucidchart.com/documents/edit/960c5e3d-1906-4253-a40f-857c0deb70e6  




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

