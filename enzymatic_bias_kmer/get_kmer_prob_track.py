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
        cur_chrom_array=np.empty((chrom_size))
        for i in range(chrom_size):
            if i%1000000==0:
                print(str(i))
            left_flank=max([0,i-5])
            right_flank=min([i+6,chrom_size])
            flank_seq=chrom_seq[left_flank:right_flank]
            total=0
            n=0
            for j in range(len(flank_seq)-5):
                try:
                    cur_seq=flank_seq[j:j+6]
                    total+=kmers[tmp_seq]
                    n+=1
                except:
                    pass
            if n==0:
                cur_chrom_array[i]=0
            else:
                cur_chrom_array[i]=total/n
        outf.addEntries(chrom_name,index,values=cur_chrom_array,span=1,step=1)
    outf.close() 
            

if __name__=="__main__":
    main()
    
