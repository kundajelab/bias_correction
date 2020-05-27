import argparse
import pandas as pd
from scipy.special import softmax
from kerasAC.util import *
import pdb
import pysam

def parse_args():
    parser=argparse.ArgumentParser(description="get PWM")
    parser.add_argument("-predictions_hdf5_profile")
    parser.add_argument("-predictions_hdf5_counts")
    parser.add_argument("-fasta")
    parser.add_argument("--flank",type=int,default=500)
    parser.add_argument("--kmer_size",type=int,default=6)
    parser.add_argument("-outf")
    parser.add_argument("-method",choices=['sum','center','first']) 
    return parser.parse_args()

def main():
    args=parse_args()
    ref=pysam.FastaFile(args.fasta)
    profile_pred=pd.read_hdf(args.predictions_hdf5_profile)
    print("loaded profile preds")
    count_pred=pd.read_hdf(args.predictions_hdf5_counts)
    print("loaded count preds")
    num_rows=profile_pred.shape[0]
    pwm=None
    if args.method=='first':
        weight_index=0
    elif args.method=='center':
        weight_index=args.kmer_size//2
        
    print(str(num_rows))
    for i in range(num_rows):
        if i%1000==0:
            print(str(i))
        cur_logit_pred=profile_pred.iloc[i].values 
        cur_count_pred=count_pred.iloc[i][0] 
        cur_index=profile_pred.index[i]
        #get the coordinates for current prediction interval 
        cur_chrom=cur_index[0]
        cur_start=cur_index[1]-args.flank
        cur_end=cur_start+2*args.flank
        #get the fasta sequence, one-hot-encode 
        cur_seq=one_hot_encode([ref.fetch(cur_chrom,cur_start,cur_end)])[0]
        #take softmax of logits
        cur_probs=softmax(cur_logit_pred)
        #get the counts profile
        cur_counts=cur_probs*cur_count_pred
        num_pos=cur_seq.shape[0]
        for j in range(0,num_pos-args.kmer_size):
            if args.method=='sum':
                cur_kmer=cur_seq[j:j+args.kmer_size]*sum(cur_counts[j:j+args.kmer_size])
            else:
                cur_kmer=cur_seq[j:j+args.kmer_size]*cur_counts[j+weight_index]
            if pwm is None:
                pwm=cur_kmer
            else:
                pwm+=cur_kmer
    #get ppm
    pwm=pwm.T
    pwm=pwm/pwm.sum(axis=0)
    print(pwm)
    np.savetxt(args.outf,pwm,delimiter='\t')
        
if __name__=="__main__":
    main()
    
