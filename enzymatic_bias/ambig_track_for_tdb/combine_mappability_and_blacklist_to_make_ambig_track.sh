cat k100*bed /mnt/data/annotations/blacklist/GRch38/GRch38_unified_blacklist.bed | bedtools sort -i - | bedtools merge -i - > k100.ambig.bed
cat k24*bed /mnt/data/annotations/blacklist/GRch38/GRch38_unified_blacklist.bed | bedtools sort -i - | bedtools merge -i - > k24.ambig.bed
