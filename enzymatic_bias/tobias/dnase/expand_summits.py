import pandas as pd
peaks=pd.read_csv("optimal_peaks.txt",header=None,sep='\t')
for index,row in peaks.iterrows():
    celltype=row[0]
    peaks_fname=row[1]
    peaks=pd.read_csv(peaks_fname,header=None,sep='\t')
    chrom=peaks[0]
    start_pos=peaks[1]
    summit_offset=peaks[9]
    summit_pos=start_pos+summit_offset
    peaks['start']=summit_pos-5000
    peaks['start'][peaks['start']<0]=0
    peaks['end']=summit_pos+5000
    subset=peaks[[0,'start','end']]
    subset.to_csv(celltype+'.10kb.expanded.bed',sep='\t',header=False,index=False)
    print("expanded:"+str(celltype))
    
    
