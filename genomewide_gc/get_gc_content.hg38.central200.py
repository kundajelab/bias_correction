import pandas as pd
import pysam
data=pd.read_hdf("classificationlabels.SummitWithin200bpCenter.hdf5",header=True,sep='\t')
fasta="/users/annashch/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta"
chrom=[]
start=[]
end=[]
vals=[]
ref=pysam.FastaFile(fasta)
for index,row in data.iterrows():
    cur_chrom=index[0]
    cur_start=index[1]
    cur_end=index[2]
    seq=ref.fetch(cur_chrom,cur_start+400,cur_end-400).lower()
    g=seq.count('g')
    c=seq.count('c')
    gc=g+c
    gc_fract=round(gc/len(seq),2)
    #print(gc_fract)
    chrom.append(cur_chrom)
    start.append(cur_start)
    end.append(cur_end)
    vals.append(gc_fract)
gc_multi_index=pd.MultiIndex.from_arrays([chrom,start,end],names=('CHR','START','END'))
gc_df=pd.DataFrame(vals,index=gc_multi_index,columns=['gc_fract'])
gc_df.to_hdf('gc_hg38_nosmooth.central200.hdf5',key="data",mode='w',append=False,format='table',min_itemsize={'CHR':30})

