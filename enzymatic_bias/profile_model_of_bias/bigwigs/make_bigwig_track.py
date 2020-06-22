#plot tracks of profile logits & counts
import argparse
import pyBigWig
import pysam
import pdb
import pandas as pd 
from scipy.special import softmax

def parse_args():
    parser=argparse.ArgumentParser("generated bigwig track of predicted bias")
    parser.add_argument("--predictions_profile")
    parser.add_argument("--predictions_counts")
    parser.add_argument("--flank",type=int,default=500)
    parser.add_argument("--out_prefix")
    parser.add_argument("--chrom_sizes")
    return parser.parse_args()


def make_bigwig_header(chrom_size_dict):
    header=[]
    for chrom in chrom_size_dict:
        header.append((chrom,chrom_size_dict[chrom]))
    return header 


def main():
    args=parse_args()
    profile_pred=pd.read_hdf(args.predictions_profile)
    print("loaded profile predictions")
    count_pred=pd.read_hdf(args.predictions_counts)
    print("loaded count predictions")
    profile_pred=profile_pred.sort_values(by=['CHR','CENTER'],axis=0)
    count_pred=count_pred.sort_values(by=['CHR','CENTER'],axis=0)
    
    #parse chrom sizes file into dictionary & get bigwig header
    chrom_sizes=open(args.chrom_sizes,'r').read().strip().split('\n')
    chrom_size_dict=dict()
    for line in chrom_sizes:
        tokens=line.split('\t')
        chrom_size_dict[tokens[0]]=int(tokens[1])
        
    bigwig_header=make_bigwig_header(chrom_size_dict)
    print(bigwig_header)
    #open output bigwig 
    outf_logit=pyBigWig.open(args.out_prefix+".logits.bw",'w')
    outf_counts=pyBigWig.open(args.out_prefix+".counts.bw",'w') 
    outf_logit.addHeader(bigwig_header)
    outf_counts.addHeader(bigwig_header)
    #write values to bigwig
    num_rows=profile_pred.shape[0]
    print(str(num_rows))
    for i in range(num_rows):
        cur_logits=profile_pred.iloc[i].values 
        cur_count=count_pred.iloc[i][0] 
        cur_index=profile_pred.index[i]
        cur_chrom=cur_index[0]
        cur_start=cur_index[1]-args.flank
        #take softmax of logits
        cur_probs=softmax(cur_logits)
        #get the counts profile
        cur_counts=cur_probs*cur_count
        try:
            outf_logit.addEntries(cur_chrom,cur_start,values=cur_logits,span=1,step=1)
            outf_counts.addEntries(cur_chrom,cur_start,values=cur_counts,span=1,step=1)
            print(cur_index) 
        except Exception as e:
            #print(str(e))
            continue 
    outf_logit.close()
    outf_counts.close() 


    
    
if __name__=="__main__":
    main()
    
