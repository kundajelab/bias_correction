import argparse
import pandas as pd
import numpy as np 
import pysam
import pyBigWig 
import pdb

def parse_args():
    parser=argparse.ArgumentParser(description="generate kmer bias tracks")
    parser.add_argument("--kmers")
    parser.add_argument("--ref_fasta")
    parser.add_argument("--chrom_sizes") 
    parser.add_argument("--outf")
    parser.add_argument("--chrom",default=None) 
    return parser.parse_args()

def main():
    args=parse_args()
    outf=pyBigWig.open(args.outf,'w') 
    kmers=pd.read_csv(args.kmers,header=None,index_col=0,sep='\t').to_dict()[1]
    print("loaded kmers")
    fasta=pysam.FastaFile(args.ref_fasta)
    chrom_sizes=pd.read_csv(args.chrom_sizes,header=None,sep='\t')
    if args.chrom is not None:
        chrom_sizes=chrom_sizes[chrom_sizes[0]==args.chrom]
    chrom_size_list=[]
    for index,row in chrom_sizes.iterrows():
        chrom_size_list.append(tuple([row[0],int(row[1])]))
    print(chrom_size_list) 
    outf.addHeader(chrom_size_list)

    
    for index,row in chrom_sizes.iterrows():
        chrom_name=row[0]
        print(chrom_name) 
        chrom_size=row[1]
        chrom_seq=fasta.fetch(chrom_name,0,chrom_size).upper()
        print("got sequence for chrom:"+str(chrom_name))
        cur_chrom_array=np.zeros((chrom_size))
        for i in range(3,chrom_size-2):
            if i%1000000==0:
                print(str(i))
            cur_seq=chrom_seq[i-3:i+3]
            if cur_seq in kmers: 
                cur_chrom_array[i]=kmers[cur_seq]
        outf.addEntries(chrom_name,index,values=cur_chrom_array,span=1,step=1)
    outf.close() 
            

if __name__=="__main__":
    main()
    

    
