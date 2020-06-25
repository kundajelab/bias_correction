#!/bin/bash
prefix=/srv/scratch/annashch/bias_correction/enzymatic_bias_kmer/
python correlate.py --bigwig1 gm12878.dnase.bias.prediction.counts.bw \
       --bigwig2 $prefix/hg38.kmer.bias.dnase.vierstra.smooth.bw \
       --regions gm12878.dnase.overlap.mappable.chr1.bed \
       --title1 GM12878.dnase.predicted.counts \
       --title2 Vierstra.dnase.kmers \
       --outf dnase.predicts.vs.vierstra_kmers.png

oak_prefix=/oak/stanford/groups/akundaje/projects/enzymatic_bias_correction
python correlate.py --bigwig1 gm12878.dnase.bias.prediction.counts.bw \
       --bigwig2 /srv/scratch/annashch/bias_correction/enzymatic_bias_kmer/hg38.kmer.bias.dnase.doublehit.smooth.bw \
       --regions gm12878.dnase.overlap.mappable.chr1.bed \
       --title1 GM12878.dnase.predicted.counts \
       --title2 Ohler.dnase.kmers.doublehit \
       --outf dnase.predicts.vs.ohler_kmers_doublehit.png

oak_prefix=/oak/stanford/groups/akundaje/projects/enzymatic_bias_correction
python correlate.py --bigwig1 gm12878.dnase.bias.prediction.counts.bw \
       --bigwig2 $oak_prefix/tobias/dnase/GM12878.filtered_expected.bw \
       --regions gm12878.dnase.overlap.mappable.chr1.bed \
       --title1 GM12878.dnase.predicted.counts \
       --title2 GM12878.dnase.TOBIAS.expected \
       --outf dnase.predicts.vs.gm12878_tobias_expected.png


oak_prefix=/oak/stanford/groups/akundaje/projects/enzymatic_bias_correction
python correlate.py --bigwig1 gm12878.dnase.bias.prediction.counts.bw \
       --bigwig2 $oak_prefix/tobias/dnase/GM12878.filtered_bias.bw \
       --regions gm12878.dnase.overlap.mappable.chr1.bed \
       --title1 GM12878.dnase.predicted.counts \
       --title2 GM12878.dnase.TOBIAS.bias \
       --outf dnase.predicts.vs.gm12878_tobias_bias.png


python correlate.py --bigwig1 gm12878.atac.bias.prediction.counts.bw \
       --bigwig2 /srv/scratch/annashch/bias_correction/enzymatic_bias_kmer/hg38.kmer.bias.atac.5bp.smooth.bw \
       --regions gm12878.atac.overlap.mappable.chr1.bed \
       --title1 GM12878.atac.predicted.counts \
       --title2 Ohler.atac.kmers \
       --outf atac.predicts.vs.ohler_kmers.png



oak_prefix=/oak/stanford/groups/akundaje/projects/enzymatic_bias_correction
python correlate.py --bigwig1 gm12878.atac.bias.prediction.counts.bw \
       --bigwig2 $oak_prefix/tobias/atac/GM12878.merged.filtered_expected.bw \
       --regions gm12878.atac.overlap.mappable.chr1.bed \
       --title1 GM12878.atac.predicted.counts \
       --title2 GM12878.atac.TOBIAS.expected \
       --outf atac.predicts.vs.gm12878_tobias_expected.png


oak_prefix=/oak/stanford/groups/akundaje/projects/enzymatic_bias_correction
python correlate.py --bigwig1 gm12878.atac.bias.prediction.counts.bw \
       --bigwig2 $oak_prefix/tobias/atac/GM12878.merged.filtered_bias.bw \
       --regions gm12878.atac.overlap.mappable.chr1.bed \
       --title1 GM12878.atac.predicted.counts \
       --title2 GM12878.atac.TOBIAS.bias \
       --outf atac.predicts.vs.gm12878_tobias_bias.png

