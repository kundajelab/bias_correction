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
    parser.add_argument("--k",type=int,default=24)
    return parser.parse_args()

def main():
    args=parse_args()
    kmers=pd.read_csv(args.kmer_list,header=None,sep='\t')
    print("loaded:"+str(args.kmer_list))
    num_kmers=kmers.shape[0]
    print(str(num_kmers))
    pos_dict={}
    for i in range(args.k):
        pos_dict[i]={}
        for letter in ['A','C','G','T']: 
            pos_dict[i][letter]=0
    for index,row in kmers.iterrows():
        if index%1000==0:
            print(str(index))
        for i in range(args.k):
            letter=row[0][i]
            if letter in pos_dict[i]:
                pos_dict[i][letter]+=row[1]
    print("got summed position weights")
    
    pwm=np.zeros((args.k,4))
    letter_dict={0:'A',1:'C',2:'G',3:'T'}
    for i in range(args.k):
        for letter_index in range(4):
            pwm[i][letter_index]=pos_dict[i][letter_dict[letter_index]]
    if args.type=='odds': 
        pwm=pwm/num_kmers
    else:
        pwm=pwm/np.expand_dims(pwm.sum(axis=1),axis=1)
    pwm=pwm.T
    pwm=np.log2(pwm/np.expand_dims(np.array([0.25,0.25,0.25,0.25]),axis=1))
    print(pwm.shape)
    np.savetxt(args.outf,pwm) 

if __name__=="__main__":
    main()
    
