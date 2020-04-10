#!/bin/bash
source activate encode-atac-seq-pipeline
#caper submit /home/users/annashch/atac-seq-pipeline/atac.wdl -i /oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/jsons/SRR072187.json -s SRR072187 --ip $1 --port 8000
#caper submit /home/users/annashch/atac-seq-pipeline/atac.wdl -i /oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/jsons/SRR1565781.json -s SRR1565781 --ip $1 --port 8000
caper submit /home/users/annashch/atac-seq-pipeline/atac.wdl -i /oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/jsons/SRR1565782.json -s SRR1565782 --ip $1 --port 8000

