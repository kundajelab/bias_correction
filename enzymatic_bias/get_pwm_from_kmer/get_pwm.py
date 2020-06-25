import argparse
import numpy as np 
import pandas as pd
from kerasAC.util import *
import pdb 
def parse_args():
    parser=argparse.ArgumentParser(description="form PWM from kmer breakdown")
    parser.add_argument("--kmer_list")
    parser.add_argument("--outf")
    parser.add_argument("--type",choices=['odds','prob'])
    return parser.parse_args()

def main():
    args=parse_args()
    kmers=pd.read_csv(args.kmer_list,header=None,sep='\t')
    seqs=one_hot_encode(kmers[0].tolist())
    weights=kmers[1].values
    if args.type=='odds': 
        pwm=np.sum(seqs*np.expand_dims(weights,axis=(1,2)),axis=0)/seqs.shape[0]
    else:
        pwm=np.sum(seqs*np.expand_dims(weights,axis=(1,2)),axis=0)
        pwm=pwm/np.expand_dims(pwm.sum(axis=1),axis=1)
    pwm=pwm.T
    pwm=np.log2(pwm/np.expand_dims(np.array([0.25,0.25,0.25,0.25]),axis=1))
    print(pwm.shape)
    np.savetxt(args.outf,pwm) 

if __name__=="__main__":
    main()
    
