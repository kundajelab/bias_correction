import argparse
import pandas as pd
from scipy.special import softmax
from kerasAC.util import *
import pdb
import pysam
import pickle

def parse_args():
    parser=argparse.ArgumentParser(description="get PWM")
    parser.add_argument("-predictions_pickle")
    parser.add_argument("-fasta")
    parser.add_argument("--flank",type=int,default=673)
    parser.add_argument("--kmer_size",type=int,default=6)
    parser.add_argument("-outf")
    parser.add_argument("-method",choices=['sum','center','first']) 
    return parser.parse_args()

def main():
    args=parse_args()
    ref=pysam.FastaFile(args.fasta)
    scores=pickle.load(open(args.predictions_pickle,'rb'))
    coords=scores['coords']
    coords=[[i.decode('utf8')  for i in j] for j in coords]
    shap_profile=scores['shap_profile']
    shap_counts=scores['shap_counts']
    print("loaded pickle with shap scores") 
    num_rows=len(shap_profile)
    kmer_dict_profile={}
    kmer_dict_counts={}
    tot_kmers={} 
    print(str(num_rows))
    for i in range(num_rows):
        if i%1000==0:
            print(str(i))
        cur_coord=coords[i]
        cur_chrom=cur_coord[0]
        cur_pos=int(cur_coord[1])
        cur_start=cur_pos-args.flank
        cur_end=cur_pos+args.flank 
        cur_seq=ref.fetch(cur_chrom,cur_start,cur_end)
        cur_shap_profile=np.squeeze(shap_profile[i])
        cur_shap_counts=np.squeeze(shap_counts[i])
        num_pos=len(cur_seq)
        for j in range(0,num_pos-args.kmer_size):
            cur_kmer=cur_seq[j:j+args.kmer_size]
            if cur_kmer not in kmer_dict_profile:
                kmer_dict_profile[cur_kmer]=np.zeros((args.kmer_size,4))
                kmer_dict_counts[cur_kmer]=np.zeros((args.kmer_size,4))
                tot_kmers[cur_kmer]=0
                
            cur_weight_profile=(one_hot_encode([cur_kmer]).squeeze()*cur_shap_profile[j:j+args.kmer_size,:])
            cur_weight_count=(one_hot_encode([cur_kmer]).squeeze()*cur_shap_counts[j:j+args.kmer_size,:])
            #print(cur_weight_profile.shape)
            #print(cur_weight_count.shape) 
            kmer_dict_profile[cur_kmer]+=cur_weight_profile
            kmer_dict_counts[cur_kmer]+=cur_weight_count
            tot_kmers[cur_kmer]+=1
    for kmer in kmer_dict_profile:
        kmer_dict_profile[kmer]=kmer_dict_profile[kmer]/tot_kmers[cur_kmer]
        kmer_dict_counts[kmer]=kmer_dict_counts[kmer]/tot_kmers[cur_kmer]
        
    #get pwm
    pwm_profile=np.zeros((args.kmer_size,4))
    pwm_counts=np.zeros((args.kmer_size,4))
    for kmer in kmer_dict_profile:
        pwm_profile+=kmer_dict_profile[kmer]
        pwm_counts+=kmer_dict_counts[kmer]
    
    np.savetxt(fname=args.outf+'.profile',X=pwm_profile)
    np.savetxt(fname=args.outf+'.counts',X=pwm_counts)
    
            
if __name__=="__main__":
    main()
    
