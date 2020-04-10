#!/bin/bash 
source activate encode-atac-seq-pipeline
module load java
caper server --port 8000 --out-dir /oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/pipeline_out

