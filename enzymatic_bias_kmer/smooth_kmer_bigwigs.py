#average across 5 bases of the bigwig (with base at position 3)
import argparse
import pyBigWig
def parse_args():
    parser=argparse.ArgumentParser(description="smooth kmer bigwig track")
    parser.add_argument("-input_bigwig")
    parser.add_argument("-output_bigwig")
    parser.add_argument("--window",type=int,default=5)
    return parser.parse_args()

def main():
    args=parse_args()
    bw=open(args.input_bigwig,'r')
    out_bw=
if __name__=="__main__":
    main()
    
