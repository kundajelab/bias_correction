#!/bin/bash
split=$1
task=$2
prefix=/oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/svm/
model=/oak/stanford/groups/akundaje/projects/enzymatic_bias_correction/svm/models/$task\_dnase/$task.$split.model.txt
gkmexplain  $prefix/fasta/$split.DNASE.svm.10kb.to.interpret.fa $model  $prefix/pred/gkmexplain.$task.$split.dnase.txt

