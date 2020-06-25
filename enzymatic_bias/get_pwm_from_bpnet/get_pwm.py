import argparse
import numpy as np 
import pandas as pd
import pdb

ltrdict = {'a':[1,0,0,0],
           'c':[0,1,0,0],
           'g':[0,0,1,0],
           't':[0,0,0,1],
           'n':[0,0,0,0],
           'A':[1,0,0,0],
           'C':[0,1,0,0],
           'G':[0,0,1,0],
           'T':[0,0,0,1],
           'N':[0,0,0,0]}

def one_hot_encode(seq):
    return np.array([ltrdict.get(x,[0,0,0,0]) for x in seq])


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
    pwm=np.zeros((args.k,4))
    for index,row in kmers.iterrows():
        if index%100000==0:
            print(str(index))
        pwm+=one_hot_encode(row[0])*row[1]
    print("got summed position weights")
    
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
    
