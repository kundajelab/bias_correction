import pandas as pd
kmers=pd.read_csv("SeqBias_ATAC.txt",header=None,index_col=0,sep='\t').to_dict()[1]

chrom_seq="AACGTGCATCA"
print(chrom_seq)
i=5
left_flank=max([0,i-5])
right_flank=min([i+6,len(chrom_seq)])
cur_seq=chrom_seq[left_flank:right_flank]
total=0
n=0

for j in range(len(cur_seq)-5):
    try:
        tmp_seq=cur_seq[j:j+6]
        total+=kmers[tmp_seq]
        n+=1
    except:
        pass
print("total:"+str(total))
print("n:"+str(n))
print(total/n)
    
