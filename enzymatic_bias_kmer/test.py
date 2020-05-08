import pandas as pd
kmers=pd.read_csv("SeqBias_ATAC.txt",header=None,index_col=0,sep='\t').to_dict()[1]

chrom_seq="AACGTGCATCA"
for j in range(3,len(chrom_seq)-2):
    tmp_seq=chrom_seq[j-3:j+3]
    print(kmers[tmp_seq])
    print(tmp_seq)
