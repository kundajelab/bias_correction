#!/bin/bash
task=$1
split=$2
chunk=$3
prefix=/oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/svm/
model=/oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/svm/models/$task\_dnase/$task.$split.model.txt
gkmexplain  $prefix/fasta/$task.DNASE.svm.10kb.to.interpret.fa.$chunk $model  $prefix/pred/gkmexplain.$task.$split.$chunk.dnase.txt

