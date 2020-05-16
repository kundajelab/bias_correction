for task in GM12878 H1ESC HEPG2 IMR90 K562
do
    TOBIAS ATACorrect --bam $task.filtered.bam --genome /mnt/data/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta --peaks $task.10kb.expanded.bed --blacklist /mnt/data/annotations/blacklist/GRch38/GRch38_unified_blacklist.bed  --read_shift 0 0 --cores 50 &
done 
