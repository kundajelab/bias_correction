import argparse
import pyBigWig
import numpy as np

def parse_args():
    parser=argparse.ArgumentParser()
    parser.add_argument("--umap_track")
    parser.add_argument("--map_thresh",type=float,default=0.8,help="flag regions with mean mappability below this value")
    parser.add_argument("--region_flank",type=int,default=500)
    parser.add_argument("--chroms",nargs="*",default=None)
    parser.add_argument("--outf")
    return parser.parse_args()

def main():
    args=parse_args()
    bw=pyBigWig.open(args.umap_track,'r')
    chroms=bw.chroms()
    if args.chroms is not None:
        chroms_to_use=args.chroms
    else:
        chroms_to_use=list(chroms.keys)
    chrom_sizes=[chroms[i] for i in chroms_to_use]
    outf=open(args.outf,'w')
    low_mappability_regions=[]    
    min_coverage=args.map_thresh*(2*args.region_flank)
    for chrom_index in range(len(chroms_to_use)):
        cur_chrom=chroms_to_use[chrom_index]
        print("processing:"+str(cur_chrom))
        cur_chrom_size=chrom_sizes[chrom_index]
        vals=bw.values(cur_chrom,0,cur_chrom_size,numpy=True)
        print("got vals")
        is_mappable=True
        for i in range(args.region_flank,cur_chrom_size-args.region_flank):
            if i%10000==0:
                print(str(i))
            center=i
            start=i-args.region_flank
            end=i+args.region_flank
            if vals[start:end].sum() < min_coverage: 
                if is_mappable==True:
                    is_mappable=False
                    low_mappability_regions.append([cur_chrom,center])
            else:
                if is_mappable==False:
                    low_mappability_regions[-1].append(center)
                    is_mappable=True
    print("writing low mappability regions")
    for region in low_mappability_regions:
        outf.write('\t'.join([str(i) for i in regino])+'\n')
    outf.close() 

if __name__=="__main__":
    main()
    
